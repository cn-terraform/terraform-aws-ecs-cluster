variable "cluster_name" {
  description = "Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
  type        = string
  default     = "test-cluster"
}

variable "additional_tags" {
  description = "Additional tags to add to the resources"
  type        = map(string)
  default = {
    test-additional-tag = "test-value"
  }
}
