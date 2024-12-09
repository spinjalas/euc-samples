
resource "null_resource" "get_edge_status" {
  #depends_on = [resource.azurerm_virtual_machine_run_command.run_command]
    triggers = {
    }
    provisioner "local-exec" {
      command = "python3 ${path.module}/../../scripts/CheckEdgeStatus.py ${var.api_endpoints.create_edge_url}/${var.edge_id} ${var.token} 6 300 >  ${path.module}/edge_status_response.json"
    }
}

resource "null_resource" "cs_configure" {
  depends_on = [resource.null_resource.get_edge_status]
    triggers = {
    }
    provisioner "local-exec" {
      command = "python3 ${path.module}/../../scripts/ConfigureCS.py ${var.api_endpoints.cs_configure_url}/${var.provider_id} ${var.token} ${var.config_data.admin.org_id} ${var.config_data.admin.provider_name} ${var.config_data.connection_server.connection_server_url} ${var.config_data.connection_server.connection_server_domain} ${var.config_data.connection_server.connection_server_username} ${var.config_data.connection_server.connection_server_password} >  ${path.module}/cs_response.json"
    }
}