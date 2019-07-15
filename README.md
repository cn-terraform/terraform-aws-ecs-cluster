# AWS ECS Cluster Terraform Module #

This Terraform module creates an AWS ECS cluster.

[![CircleCI](https://circleci.com/gh/jnonino/terraform-aws-ecs-cluster/tree/master.svg?style=svg)](https://circleci.com/gh/jnonino/terraform-aws-ecs-cluster/tree/master)

## Usage

Check valid versions on:
* Github Releases: <https://github.com/jnonino/terraform-aws-ecs-cluster/releases>
* Terraform Module Registry: <https://registry.terraform.io/modules/jnonino/ecs-cluster/aws>

        module "ecs-cluster": 
            source              = "jnonino/ecs-cluster/aws"
            version             = "1.0.0"
            name_preffix        = var.name_preffix
            profile             = var.profile
            region              = var.region
        }

## Input values

* profile: AWS API key credentials to use.
* region: AWS Region where the infrastructure is hosted in.
* name: The name of the cluster (up to 255 letters, numbers, hyphens, and underscores).

## Output values

* aws_ecs_cluster_cluster_id: The Amazon ID that identifies the cluster.
* aws_ecs_cluster_cluster_arn: The Amazon Resource Name (ARN) that identifies the cluster.

