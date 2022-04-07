# terraform-azuread-serviceprincipal

Terraform module for creating service principals in Azure AD. This module creates an Azure AD application and associated service principal in the Azure AD tenant associated with the Azure AD provider. It also generates a Service Principal secret (password) with an optional expiration time.

## Usage

```terraform
module "sp" {
    source = "ned1313/serviceprincipal/azuread"

    service_principal_name = "my-app"
    service_principal_secret_duration = "720h"
}
```
