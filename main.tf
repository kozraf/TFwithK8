terraform {
  backend "kubernetes" {
    config_path   = "~/.kube/config"
    secret_suffix = "tfstate"
    namespace     = "default"
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

resource "kubernetes_namespace" "TF_ns" {
  metadata {
    name = "TF-ns"
  }
}