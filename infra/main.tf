resource "docker_container" "backend" {
  image = "backend_app:latest"
  name  = "my_backend"
  ports {
    internal = 8080
    external = 8080
  }
}
