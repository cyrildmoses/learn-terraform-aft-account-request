module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cyrild.moses+workload_dev@gmail.com"
    AccountName               = "workload-dev"
    ManagedOrganizationalUnit = "workload"
    SSOUserEmail              = "cyrild.moses+workload_dev@gmail.com"
    SSOUserFirstName          = "cyril moses"
    SSOUserLastName           = "devadass"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

}
