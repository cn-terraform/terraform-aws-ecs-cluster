# ---------------------------------------------------------------------------------------------------------------------
# AWS CREDENTIALS AND REGION
# ---------------------------------------------------------------------------------------------------------------------
variable "profile" {
  description = "AWS API key credentials to use"
}

variable "region" {
  description = "AWS Region where the infrastructure is hosted in"
}

# ---------------------------------------------------------------------------------------------------------------------
# ECS CLUSTER
# ---------------------------------------------------------------------------------------------------------------------
variable "name" {
  description = "The name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
}

