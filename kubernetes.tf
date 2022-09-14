resource "kubernetes_deployment" "java" {
  metadata {
    name = "scalacapp-deployment"
    labels = {
      app = "scalacapp"
    }
  }
  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "scalacapp"
      }
    }
    template {
      metadata {
        labels = {
          app = "scalacapp"
        }
      }
      spec {
        container {
          image = "zxkuba/scalacapp:v1"
          name  = "scalacapp"
          port {
            container_port = 8080
          }
        }
      }
    }
  }
}
resource "kubernetes_service" "java" {
  depends_on = [kubernetes_deployment.java]
  metadata {
    name = "scalacapp-service"
  }
  spec {
    selector = {
      app = "scalacapp"
    }
    port {
      port        = 80
      target_port = 8080
    }
    type = "LoadBalancer"
  }
}
