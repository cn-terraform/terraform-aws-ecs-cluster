#------------------------------------------------------------------------------
# ECS CLUSTER
#------------------------------------------------------------------------------
variable "name" {
  description = "(Required) Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)."
}

variable "configuration" {
  description = "(Optional) The execute command configuration for the cluster."
  type = object({
    # The details of the execute command configuration.
    execute_command_configuration = object({
      # The AWS Key Management Service key ID to encrypt the data between the local client and the container.
      kms_key_id = optional(string)
      # The log configuration for the results of the execute command actions Required when logging is OVERRIDE.
      log_configuration = object({
        # Whether or not to enable encryption on the CloudWatch logs. If not specified, encryption will be disabled.
        cloud_watch_encryption_enabled = optional(bool)
        # The name of the CloudWatch log group to send logs to.
        cloud_watch_log_group_name = optional(string)
        # The name of the S3 bucket to send logs to.
        s3_bucket_name = optional(string)
        # Whether or not to enable encryption on the logs sent to S3. If not specified, encryption will be disabled.
        s3_bucket_encryption_enabled = optional(bool)
        # An optional folder in the S3 bucket to place logs in.
        s3_key_prefix = optional(string)
      })
      # The log setting to use for redirecting logs for your execute command results. Valid values are NONE, DEFAULT, and OVERRIDE.
      logging = optional(string)
    })
  })
  default = null
}

variable "containerInsights" {
  description = "(Optional) Enables container insights if true"
  type        = bool
  default     = false
}

variable "service_connect_defaults" {
  description = "(Optional) Configures a default Service Connect namespace."
  type = object({
    # The ARN of the aws_service_discovery_http_namespace that's used when you create a service and don't specify a Service Connect configuration.
    namespace = string
  })
  default = null
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Resource tags"
}
