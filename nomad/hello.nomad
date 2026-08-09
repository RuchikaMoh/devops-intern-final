job "hello-devops" {
  datacenters = ["dc1"]
  type        = "service"

  group "hello" {
    count = 1

    network {
      mode = "bridge"
    }

    task "hello" {
      driver = "docker"

      config {
        image = "devops-hello:latest"
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}