module "workload-prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cyrild.moses+workload-prod@gmail.com"
    AccountName               = "workload-prod"
    ManagedOrganizationalUnit = "workload"
    SSOUserEmail              = "cyrild.moses+workload-prod@gmail.com"
    SSOUserFirstName          = "cyril"
    SSOUserLastName           = "devadass"
  }

  account_tags = {
    "description" = "My First Account"
  }

  change_management_parameters = {
    change_requested_by = "Cyril"
    change_reason       = "To create the customization pipeline"
  }

  account_customizations_name = "workload-prod"

}
