resource "aws_service_discovery_http_namespace" "example" {
  name        = "development"
  description = "example"
}

module "cluster" {
  source = "../../"
  name   = "test-cluster"

  service_connect_defaults = {
    namespace = aws_service_discovery_http_namespace.example.arn
  }
}
