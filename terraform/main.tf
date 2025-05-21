module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sreeya20002+dev@gmail.com"
    AccountName               = "dev-account"
    ManagedOrganizationalUnit = "non-prod"
    SSOUserEmail              = "sreeya20002+dev@gmail.com"
    SSOUserFirstName          = "sree"
    SSOUserLastName           = "a"
  }

  account_tags = {
    "Learn Tutorial" = "aft-test-module"
  }

  change_management_parameters = {
    change_requested_by = "sreeya"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
