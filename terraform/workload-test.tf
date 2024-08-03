module "workload-test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cyrild.moses+workload-test@gmail.com"
    AccountName               = "workload-test"
    ManagedOrganizationalUnit = "workload"
    SSOUserEmail              = "cyrild.moses+workload-test@gmail.com"
    SSOUserFirstName          = "cyril"
    SSOUserLastName           = "devadass"
  }

  account_tags = {
    "description" = "Test Account"
  }

  change_management_parameters = {
    change_requested_by = "Cyril"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  account_customizations_name = "workload-test"

}
