dependency "service_account" {
  config_path = "../01-service_account"
}

inputs = {
  token = dependency.service_account.outputs.token
}