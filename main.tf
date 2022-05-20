#------------------------------------------------------------------------------
# ECS CLUSTER
#------------------------------------------------------------------------------
resource "aws_ecs_cluster" "cluster" {
  name = var.name
  tags = var.tags

  dynamic "setting" {
    for_each = var.containerInsights == true ? [1] : []
    content {
      name  = "containerInsights"
      value = "enabled"
    }
  }
}
