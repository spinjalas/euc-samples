
resource "null_resource" "apply_trigger" {}

data "local_file" "geo_data" {
  #depends_on = [null_resource.apply_trigger]
  filename = "${path.module}/geolocations.json"
}
locals {
  cities = jsondecode(data.local_file.geo_data.content)
}
locals {
  matching_location = [
      for city in local.cities : city 
        if lower(city.city) == lower(var.config_data.admin.location.city)
        && lower(city.state) == lower(var.config_data.admin.location.state)
        && lower(city.country) == lower(var.config_data.admin.location.country)
  ]
}
locals {
  match_found = length(local.matching_location) > 0
}
output "geo_location"{
  value = local.match_found  ? {
    city = local.matching_location[0].city
    latitude = local.matching_location[0].lat
    longitude = local.matching_location[0].lng
  } : null
  
}
resource "null_resource" "validate_location" {
  #depends_on = [null_resource.apply_trigger]
  count = local.match_found  ? 0  : 1
  provisioner "local-exec"{
    command = "echo 'please check city, state, country' && exit 1"
  }
}

resource "null_resource" "get_token_request" {
    triggers = {
      always = timestamp()
    }

    provisioner "local-exec" {
      command = "python3 ${path.module}/../../scripts/TokenAuthorization.py ${var.api_endpoints.api_token_url} ${var.config_data.admin.refresh_token} >  ${path.module}/token_response.json"
    }
}

data "local_file" "response" {
  depends_on = [null_resource.get_token_request]
  filename   = "${path.module}/token_response.json"
}

# Extract the thumbprint from the response JSON
output "token" {
  value = jsondecode(data.local_file.response.content).access_token
  sensitive = true
}

locals {
 token = jsondecode(data.local_file.response.content).access_token
}




resource "null_resource" "create_provider" {
    triggers = {
    }

    provisioner "local-exec" {
      command = "python3 ${path.module}/../../scripts/CreateProvider.py ${var.api_endpoints.create_provider_url} ${local.token} ${var.config_data.admin.org_id} ${local.matching_location[0].lat} ${local.matching_location[0].lng} ${var.config_data.admin.provider_name} >  ${path.module}/provider_response.json"
    }
 

}


data "local_file" "provider_response" {
  depends_on = [null_resource.create_provider]
  filename   = "${path.module}/provider_response.json"
}

output "output_provider" {
  value = jsondecode(data.local_file.provider_response.content)
}

locals {
  provider_id = jsondecode(data.local_file.provider_response.content).id
}

resource "null_resource" "create_edge" {
  depends_on = [null_resource.create_provider]
    triggers = {
    }

    provisioner "local-exec" {
      command = "python3 ${path.module}/../../scripts/CreateEdge.py ${var.api_endpoints.create_edge_url} ${local.token} ${var.config_data.admin.edge_name} ${var.config_data.admin.edge_fqdn} ${var.config_data.admin.org_id} ${local.provider_id}  >  ${path.module}/edge_response.json"
    }

   
}


data "local_file" "edge_response" {
  depends_on = [null_resource.create_edge]
  filename   = "${path.module}/edge_response.json"
}

output "output_edge" {
   value = jsondecode(data.local_file.edge_response.content)
}

locals {
  depends_on = [null_resource.create_edge]
  edge_id = jsondecode(data.local_file.edge_response.content).id
}



data "http" "get_edge_config" {
  depends_on = [null_resource.get_token_request]
  url = var.api_endpoints.get_edge_config_url
    method  = "GET"
    request_headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${local.token}",
      "accept" : "application/json"
      }
    
}
output "get_edge_config_out" {
  value = jsondecode(data.http.get_edge_config.response_body)
}
output "edge_config_status" {
  value = data.http.get_edge_config.status_code
}
locals {
  edge_config_data = jsondecode(data.http.get_edge_config.response_body)
  edge_image_data = [
    for item in local.edge_config_data : {
      url  = item.url
      name = item.name
    }
    if (
      (var.platform == "azure" && item.capacityType == "AZURE" && item.fileType == "ZIPPED_FILE") ||
      (var.platform == "ec2" && item.capacityType == "AWS" && item.fileType == "VMDK")
    )
  ][0]
  download_image_name = "${replace(local.edge_image_data.name, ".zip", "")}"
}

output "download_image_name" {
  value = local.download_image_name
}
locals {
  local_destination = "${var.temp_dir}${local.edge_image_data.name}"
}

output "vhd_name" {
  value = "${var.temp_dir}${local.download_image_name}"
}

resource "null_resource" "download_edge_image" {
  depends_on =  [data.http.get_edge_config]
  triggers = {
    file_missing = !fileexists(local.local_destination) ? "missing" : "exists"
  }
  provisioner "local-exec" {
    when    = create
     command = <<EOT
        curl -L ${local.edge_image_data.url} -o ${local.local_destination}
    EOT
  }
}

locals {
  unarchiver_command = (
    var.temp_dir == var.windows_temp_dir ?
    "powershell -Command \"Expand-Archive -Path ${var.temp_dir}${local.edge_image_data.name} -DestinationPath ${var.temp_dir} -Force\"" : "unzip -o  ${var.temp_dir}${local.edge_image_data.name} -d ${var.temp_dir}"
  )
}
# Use local-exec to extract the zip
resource "null_resource" "extract_zip" {
  depends_on = [resource.null_resource.download_edge_image]
  provisioner "local-exec" {
    command = local.unarchiver_command
  }
}



resource "null_resource" "get_token_request1" {
  depends_on = [resource.null_resource.download_edge_image]
    triggers = {
      always = timestamp()
    }

    provisioner "local-exec" {
      command = "python3 ${path.module}/../../scripts/TokenAuthorization.py ${var.api_endpoints.api_token_url} ${var.config_data.admin.refresh_token} >  ${path.module}/response.json"
    }

    provisioner "local-exec" {
        command = "rm ${path.module}/response.json"
        when    = destroy  # Ensure it runs when resource is destroyed
    }
}

data "local_file" "response1" {
  depends_on = [null_resource.get_token_request1]
  filename   = "${path.module}/response.json"
}

# Extract the thumbprint from the response JSON
output "token1" {
  value = jsondecode(data.local_file.response1.content).access_token
  sensitive = true
}

locals {
 token1 = jsondecode(data.local_file.response1.content).access_token
}


resource "null_resource" "wait_1_minutes" {
  depends_on = [resource.null_resource.create_edge]
  provisioner "local-exec" {
    command = "sleep 60"  
  }
}

resource "null_resource" "get_pairing_code" {
  depends_on =  [resource.null_resource.wait_1_minutes]
    triggers = {
    }

    provisioner "local-exec" {
      command = "python3 ${path.module}/../../scripts/PairingCode.py ${format("%s/%s/%s", var.api_endpoints.create_edge_url, local.edge_id, var.api_endpoints.pairing_code_url_suffix)} ${local.token1} ${var.sensitivedata} >  ${path.module}/pairing_response.json"
    }
}


data "local_file" "pairing_code_response" {
  depends_on = [null_resource.get_pairing_code]
  filename   = "${path.module}/pairing_response.json"
}

output "output_pairing_code" {
  depends_on = [null_resource.get_pairing_code]
  value = jsondecode(data.local_file.pairing_code_response.content)
}

