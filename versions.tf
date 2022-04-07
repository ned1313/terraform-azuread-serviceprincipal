terraform {
  # Require at least Terraform 1.0
  required_version = ">=1.0"

  # Require version 2 of Azure AD provider
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~>2.0"
    }
  }
}