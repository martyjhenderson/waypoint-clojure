project = "clj-demo"

app "clj-demo" {
  labels = {
    "service" = "clj-demo",
    "env"     = "dev"
  }

  build {
    use "pack" {
    }
    registry {
      use "aws-ecr" {
        region     = "us-east-1"
        repository = "waypoint-clj"
        tag        = "latest"
      }
    }
  }

  deploy {
    use "kubernetes" {
      probe_path = "/"
    }
  }

  release {
    use "kubernetes" {
      load_balancer = true
      port          = 80
    }
  }
}