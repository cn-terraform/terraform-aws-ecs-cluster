# ---------------------------------------------------------------------------------------------------------------------
# ECS CLUSTER
# ---------------------------------------------------------------------------------------------------------------------
output "aws_ecs_cluster_cluster_id" {
  description = "The Amazon ID that identifies the cluster"
  value       = aws_ecs_cluster.cluster.id
}

output "aws_ecs_cluster_cluster_arn" {
  description = "The Amazon Resource Name (ARN) that identifies the cluster"
  value       = aws_ecs_cluster.cluster.arn
}

