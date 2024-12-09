
variable "config_data"  {
    type = any
    sensitive = true
}

variable "api_endpoints" {
    type = map(any)
}

variable "platform" {
  type = string
  description = "Enter the platform: azure"  
}

variable "operation" {
  type = string
  description = "Enter the operation: create"
}

variable "temp_dir" {
  description = "Path to the temporary directory"
  type = string
}

variable "edge_id" {
  type = string
}

variable "token" {
  type  = string
  sensitive = true
}
variable "provider_id" {
  type  = string
  sensitive = true
}
