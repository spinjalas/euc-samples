
variable "config_data"  {
    type = any
    sensitive = true
}

variable "api_endpoints" {
    type = map(any)
}


variable "platform" {
  type        = string
  description = "Enter the platform: azure"
  default = "azure"
  
}

variable "operation" {
  type        = string
  description = "Enter the operation: create"
  
}

variable "temp_dir" {
  description = "Path to the temporary directory"
  type        = string
  
}

