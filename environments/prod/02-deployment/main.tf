provider "kubernetes" {
  host  = "https://kubernetes.docker.internal:6443"
  token = var.token
  insecure = true
}

module "deployment_nonprod" {
  source = "../../../modules/deployment"

  message = "Hello Krollege From PROD!"
  environment = "prod"
}