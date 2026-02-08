output "cluster" {
  description = "The created ECS Cluster."
  value       = module.cluster.ecs_cluster
}
