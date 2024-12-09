
variable "config_data"  {
    type = any
}

variable "api_endpoints" {
    type = map(any)
}


variable "platform" {
  type        = string
  description = "Enter the platform: azure" 
}

variable "operation" {
  type        = string
  description = "Enter the operation: create" 
}

variable "temp_dir" {
  description = "Path to the temporary directory"
  type        = string
}

variable "windows_temp_dir" {
  description = "Path to the windows temporary directory"
  type        = string
  default = "c:\\temp\\"
}

variable "sensitivedata" {
  type        = string
  default = ""
  sensitive = true
}
