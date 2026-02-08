resource "aws_kms_key" "example" {
  description             = "example"
  deletion_window_in_days = 7
  enable_key_rotation     = true
}

module "logs-s3-bucket" {
  source  = "cn-terraform/logs-s3-bucket/aws"
  version = "2.0.0"

  bucket_name = "example-logs-bucket"
  log_delivery_principals = [
    "ecs-tasks.amazonaws.com"
  ]
}

# trivy:ignore:AWS-0034 (LOW): Cluster does not have container insights enabled.
module "cluster" {
  source          = "../../"
  name            = var.cluster_name
  additional_tags = var.additional_tags

  configuration = {
    execute_command_configuration = {
      kms_key_id = aws_kms_key.example.arn
      logging    = "OVERRIDE"

      log_configuration = {
        s3_bucket_name               = module.logs-s3-bucket.s3_bucket_id
        s3_bucket_encryption_enabled = true
        s3_key_prefix                = "test-logs"
      }
    }
  }
}
