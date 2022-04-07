variable "service_principal_name" {
  description = "(Required) Display name of application and service principal."
  type        = string

  validation {
    condition     = can(regex("^[[:alpha:]][a-zA-Z0-9|-]{3,}[a-zA-Z0-9]$", var.service_principal_name))
    error_message = <<EOF
    The service_principal_name must be at least 5 characters, composed of letters, numbers, and hyphens, 
    start with a letter, and not end with a hyphen.
EOF
  }
}

variable "service_principal_secret_duration" {
  description = <<EOF
    (Optional) Duration of validity for the Service Principal secret. Defaults to none. 
    Formatted as hours, minutes, and seconds, e.g. `240h` (10days)."
EOF
  type        = string
  default     = null
}