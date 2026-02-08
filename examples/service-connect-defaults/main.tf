resource "aws_service_discovery_http_namespace" "example" {
  name        = "development"
  description = "example"
}

# trivy:ignore:AWS-0034 (LOW): Cluster does not have container insights enabled.
module "cluster" {
  source          = "../../"
  name            = var.cluster_name
  additional_tags = var.additional_tags

  service_connect_defaults = {
    namespace = aws_service_discovery_http_namespace.example.arn
  }
}
