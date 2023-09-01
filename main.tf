#------------------------------------------------------------------------------
# ECS CLUSTER
#------------------------------------------------------------------------------
resource "aws_ecs_cluster" "cluster" {
  name = var.name
  tags = var.tags

  dynamic "configuration" {
    for_each = toset(var.configuration != null ? [var.configuration] : [])
    content {
      dynamic "execute_command_configuration" {
        for_each = [configuration.value.execute_command_configuration]
        content {
          kms_key_id = try(execute_command_configuration.value.kms_key_id, null)
          dynamic "log_configuration" {
            for_each = try([execute_command_configuration.value.log_configuration], [])
            content {
              cloud_watch_encryption_enabled = try(log_configuration.value.cloud_watch_encryption_enabled, null)
              cloud_watch_log_group_name     = try(log_configuration.value.cloud_watch_log_group_name, null)
              s3_bucket_name                 = try(log_configuration.value.s3_bucket_name, null)
              s3_bucket_encryption_enabled   = try(log_configuration.value.s3_bucket_encryption_enabled, null)
              s3_key_prefix                  = try(log_configuration.value.s3_key_prefix, null)
            }
          }
          logging = try(execute_command_configuration.value.logging, null)
        }
      }
    }
  }

  dynamic "service_connect_defaults" {
    for_each = toset(var.service_connect_defaults != null ? [var.service_connect_defaults] : [])
    content {
      namespace = service_connect_defaults.value.namespace
    }
  }

  dynamic "setting" {
    for_each = var.containerInsights == true ? [1] : []
    content {
      name  = "containerInsights"
      value = "enabled"
    }
  }
}
