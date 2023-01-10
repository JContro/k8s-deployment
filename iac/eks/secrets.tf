locals {
  secrets_name      = "env-secrets"
  secrets_namespace = format("%s-%s", var.context, var.environment)
}


resource "kubernetes_namespace" "namespace" {
  metadata {
    name = local.secrets_namespace
  }
}

resource "kubernetes_secret" "environment_secrets" {
  metadata {
    name      = local.secrets_name
    namespace = local.secrets_namespace
  }

  data = {
    AWS_ACCESS_KEY_ID     = var.container_access_key
    AWS_SECRET_ACCESS_KEY = var.container_secret_key
    STAGE                 = var.environment
  }


  type = "Opaque"
  depends_on = [
    kubernetes_namespace.namespace
  ]
}
