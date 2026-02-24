# AWS ECS Cluster Terraform Module #

This Terraform module creates an AWS ECS cluster.

[![](https://github.com/cn-terraform/terraform-aws-ecs-cluster/workflows/terraform/badge.svg)](https://github.com/cn-terraform/terraform-aws-ecs-cluster/actions?query=workflow%3Aterraform)
[![](https://img.shields.io/github/license/cn-terraform/terraform-aws-ecs-cluster)](https://github.com/cn-terraform/terraform-aws-ecs-cluster)
[![](https://img.shields.io/github/issues/cn-terraform/terraform-aws-ecs-cluster)](https://github.com/cn-terraform/terraform-aws-ecs-cluster)
[![](https://img.shields.io/github/issues-closed/cn-terraform/terraform-aws-ecs-cluster)](https://github.com/cn-terraform/terraform-aws-ecs-cluster)
[![](https://img.shields.io/github/languages/code-size/cn-terraform/terraform-aws-ecs-cluster)](https://github.com/cn-terraform/terraform-aws-ecs-cluster)
[![](https://img.shields.io/github/repo-size/cn-terraform/terraform-aws-ecs-cluster)](https://github.com/cn-terraform/terraform-aws-ecs-cluster)

## Usage

Check valid versions on:
* Github Releases: <https://github.com/cn-terraform/terraform-aws-ecs-cluster/releases>
* Terraform Module Registry: <https://registry.terraform.io/modules/cn-terraform/ecs-cluster/aws>

## Install pre commit hooks.

Pleas run this command right after cloning the repository.

```bash
pre-commit install
```

For that you may need to install the following tools:
* [Pre-commit](https://pre-commit.com/)
* [Terraform Docs](https://terraform-docs.io/)

In order to run all checks at any point run the following command:

```bash
pre-commit run --all-files
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecs_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_tags"></a> [additional\_tags](#input\_additional\_tags) | (Optional) Additional tags to add to resources. These will be merged with the default tags added by the module. If configured with a provider default\_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level. | `map(string)` | `{}` | no |
| <a name="input_configuration"></a> [configuration](#input\_configuration) | (Optional) The execute command configuration for the cluster. | <pre>object({<br/>    # The details of the execute command configuration.<br/>    execute_command_configuration = object({<br/>      # The AWS Key Management Service key ID to encrypt the data between the local client and the container.<br/>      kms_key_id = optional(string)<br/>      # The log configuration for the results of the execute command actions Required when logging is OVERRIDE.<br/>      log_configuration = object({<br/>        # Whether or not to enable encryption on the CloudWatch logs. If not specified, encryption will be disabled.<br/>        cloud_watch_encryption_enabled = optional(bool)<br/>        # The name of the CloudWatch log group to send logs to.<br/>        cloud_watch_log_group_name = optional(string)<br/>        # The name of the S3 bucket to send logs to.<br/>        s3_bucket_name = optional(string)<br/>        # Whether or not to enable encryption on the logs sent to S3. If not specified, encryption will be disabled.<br/>        s3_bucket_encryption_enabled = optional(bool)<br/>        # An optional folder in the S3 bucket to place logs in.<br/>        s3_key_prefix = optional(string)<br/>      })<br/>      # The log setting to use for redirecting logs for your execute command results. Valid values are NONE, DEFAULT, and OVERRIDE.<br/>      logging = optional(string)<br/>    })<br/>  })</pre> | `null` | no |
| <a name="input_containerInsights"></a> [containerInsights](#input\_containerInsights) | (Optional) Enables container insights if true | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Name of the cluster (up to 255 letters, numbers, hyphens, and underscores) | `string` | n/a | yes |
| <a name="input_service_connect_defaults"></a> [service\_connect\_defaults](#input\_service\_connect\_defaults) | (Optional) Configures a default Service Connect namespace. | <pre>object({<br/>    # The ARN of the aws_service_discovery_http_namespace that's used when you create a service and don't specify a Service Connect configuration.<br/>    namespace = string<br/>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecs_cluster"></a> [ecs\_cluster](#output\_ecs\_cluster) | Values from the created ECS Cluster. |
<!-- END_TF_DOCS -->
