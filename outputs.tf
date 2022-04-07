# Service principal object
output "service_principal_object" {
  description = "The full azuread_service_principal object with all available attributes."
  value       = azuread_service_principal.sp_sp
}


# Service principal password
output "service_principal_password" {
  description = "The generated service principal secret. Marked as sensitive."
  value       = azuread_service_principal_password.sp_pwd.value
  sensitive   = true
}