dependency "service_account" {
  config_path = "../01-service_account"
}

inputs = {
  token = dependency.service_account.outputs.token
}

terraform_version_constraint  = "0.13.5"
terragrunt_version_constraint = "0.25.4"