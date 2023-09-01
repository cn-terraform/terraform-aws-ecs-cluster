module "cluster" {
  source = "../../"
  name   = "test-cluster"

  containerInsights = true
}
