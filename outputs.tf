#############
# ECS Cluster
#############
output "ecs_cluster" {
  description = "Values from the created ECS Cluster."
  value       = aws_ecs_cluster.cluster
}
