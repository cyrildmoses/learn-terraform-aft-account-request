module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cyrild.moses+workload-dev@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "workload"
    SSOUserEmail              = "cyrild.moses+workload-dev@gmail.com"
    SSOUserFirstName          = "cyril"
    SSOUserLastName           = "devadass"
  }

  account_tags = {
    "description" = "My First Account"
  }

  change_management_parameters = {
    change_requested_by = "Cyril"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

}
