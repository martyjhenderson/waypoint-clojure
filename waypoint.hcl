project = "waypoint-demos"

app "clj-demo" {
  labels = {
    "service" = "clj-demo",
    "env"     = "dev"
  }

  build {
    use "pack" {
    builder="paketobuildpacks/builder:base"
    }
    registry {
      use "docker" {
        image = "harbor.ravegrunt.com/waypointdemos/waypoint-clojure"
        tag  = "latest"
      }
    }
  }

  deploy {
    use "kubernetes" {
      probe_path = "/"
      namespace = "waypoint-clj"
      service_port = 8080
    }
  }

  release {
    use "kubernetes" {
      load_balancer = true
      port          = 8080
      namespace = "waypoint-clj-prod"
    }
  }
}