# trivy:ignore:AWS-0034 (LOW): Cluster does not have container insights enabled.
module "cluster" {
  source          = "../../"
  name            = var.cluster_name
  additional_tags = var.additional_tags
}
