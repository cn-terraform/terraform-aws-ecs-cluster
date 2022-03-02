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

        pre-commit install

For that you may need to install the folowwing tools:
* [Pre-commit](https://pre-commit.com/) 
* [Terraform Docs](https://terraform-docs.io/)

In order to run all checks at any point run the following command:

        pre-commit run --all-files

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecs_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the cluster (up to 255 letters, numbers, hyphens, and underscores) | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Resource tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_ecs_cluster_cluster_arn"></a> [aws\_ecs\_cluster\_cluster\_arn](#output\_aws\_ecs\_cluster\_cluster\_arn) | The Amazon Resource Name (ARN) that identifies the cluster |
| <a name="output_aws_ecs_cluster_cluster_id"></a> [aws\_ecs\_cluster\_cluster\_id](#output\_aws\_ecs\_cluster\_cluster\_id) | The Amazon ID that identifies the cluster |
| <a name="output_aws_ecs_cluster_cluster_name"></a> [aws\_ecs\_cluster\_cluster\_name](#output\_aws\_ecs\_cluster\_cluster\_name) | The name of the cluster |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
