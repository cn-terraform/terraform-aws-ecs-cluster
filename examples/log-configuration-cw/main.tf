resource "aws_kms_key" "example" {
  description             = "example"
  deletion_window_in_days = 7
  enable_key_rotation     = true
}

# trivy:ignore:AWS-0017 (LOW): Log group is not encrypted.
resource "aws_cloudwatch_log_group" "example" {
  name = "example"
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
        cloud_watch_encryption_enabled = true
        cloud_watch_log_group_name     = aws_cloudwatch_log_group.example.name
      }
    }
  }
}
