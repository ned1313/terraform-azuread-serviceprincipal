variable "sp_name" {
    default = "my-example-sp"
}

module "sp" {
  source = "../.."

  service_principal_name = "my-app"
}

output "sp_object" {
  value = module.sp.service_principal_object
}