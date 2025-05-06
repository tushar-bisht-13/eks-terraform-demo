resource "kubernetes_manifest" "app1" {
  manifest = yamldecode(file("${path.module}/app1-deployment.yaml"))
}

resource "kubernetes_manifest" "app2" {
  manifest = yamldecode(file("${path.module}/app2-deployment.yaml"))
}

resource "kubernetes_manifest" "ingress" {
  manifest = yamldecode(file("${path.module}/ingress.yaml"))
}
