resource "kubernetes_namespace" "ns" {
  metadata {
    name = var.environment
  }
}

resource "kubernetes_pod" "echo" {
  metadata {
    name = "echo-example"
    namespace = kubernetes_namespace.ns.metadata[0].name
    labels = {
      App = "echo"
      Env = var.environment
    }
  }
  spec {
    container {
      image = "hashicorp/http-echo:0.2.1"
      name  = "example"
      args  = ["-listen=:80", "-text='${var.message}'"]

      port {
        container_port = 80
      }
    }
  }
}