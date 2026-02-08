module "cluster" {
  source          = "../../"
  name            = var.cluster_name
  additional_tags = var.additional_tags

  containerInsights = true
}
