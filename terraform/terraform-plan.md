[0m[1mmodule.eks.module.eks.module.kms.data.aws_caller_identity.current[0]: Reading...[0m[0m
[0m[1mmodule.eks.module.eks.data.aws_caller_identity.current[0]: Reading...[0m[0m
[0m[1mmodule.iam.data.aws_iam_policy.alb_controller: Reading...[0m[0m
[0m[1mmodule.iam.data.aws_iam_policy_document.lambda_cloudwatch_logs: Reading...[0m[0m
[0m[1mmodule.iam.data.aws_iam_policy_document.github_terraform_permissions: Reading...[0m[0m
[0m[1mmodule.iam.data.aws_iam_policy_document.lambda_cloudwatch_logs: Read complete after 0s [id=905794274][0m
[0m[1mmodule.iam.data.aws_iam_policy_document.github_logs: Reading...[0m[0m
[0m[1mmodule.eks.module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Reading...[0m[0m
[0m[1mmodule.iam.data.aws_iam_policy_document.github_logs: Read complete after 0s [id=2543915245][0m
[0m[1mmodule.eks.module.eks.data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2830595799][0m
[0m[1mmodule.iam.data.aws_iam_policy_document.github_terraform_permissions: Read complete after 0s [id=137909103][0m
[0m[1mmodule.eks.module.eks.data.aws_partition.current[0]: Reading...[0m[0m
[0m[1mmodule.iam.data.aws_caller_identity.current: Reading...[0m[0m
[0m[1mmodule.eks.module.eks.module.kms.data.aws_partition.current[0]: Reading...[0m[0m
[0m[1mmodule.eks.module.eks.data.aws_partition.current[0]: Read complete after 0s [id=aws][0m
[0m[1mmodule.eks.module.eks.module.kms.data.aws_partition.current[0]: Read complete after 0s [id=aws][0m
[0m[1mmodule.eks.module.eks.data.aws_iam_policy_document.custom[0]: Reading...[0m[0m
[0m[1mmodule.eks.module.eks.data.aws_iam_policy_document.custom[0]: Read complete after 0s [id=513122117][0m
[0m[1mmodule.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].data.aws_caller_identity.current: Reading...[0m[0m
[0m[1mmodule.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].data.aws_partition.current: Reading...[0m[0m
[0m[1mmodule.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].data.aws_partition.current: Read complete after 0s [id=aws][0m
[0m[1mmodule.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].data.aws_iam_policy_document.assume_role_policy[0]: Reading...[0m[0m
[0m[1mmodule.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].data.aws_iam_policy_document.assume_role_policy[0]: Read complete after 0s [id=2560088296][0m
[0m[1mmodule.eks.module.eks.module.kms.data.aws_caller_identity.current[0]: Read complete after 1s [id=561876735341][0m
[0m[1mmodule.eks.module.eks.data.aws_caller_identity.current[0]: Read complete after 1s [id=561876735341][0m
[0m[1mmodule.eks.module.eks.data.aws_iam_session_context.current[0]: Reading...[0m[0m
[0m[1mmodule.eks.module.eks.data.aws_iam_session_context.current[0]: Read complete after 0s [id=arn:aws:iam::561876735341:user/Cloud-admin][0m
[0m[1mmodule.iam.data.aws_caller_identity.current: Read complete after 1s [id=561876735341][0m
[0m[1mmodule.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].data.aws_caller_identity.current: Read complete after 2s [id=561876735341][0m
[0m[1mmodule.iam.data.aws_iam_policy.alb_controller: Read complete after 3s [id=arn:aws:iam::561876735341:policy/AWSLoadBalancerControllerIAMPolicy][0m

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  [32m+[0m create[0m
 [36m<=[0m read (data resources)[0m

Terraform will perform the following actions:

[1m  # data.aws_eks_cluster.cluster[0m will be read during apply
  # (depends on a resource or a module with changes pending)
[0m [36m<=[0m[0m data "aws_eks_cluster" "cluster" {
      [32m+[0m[0m access_config             = (known after apply)
      [32m+[0m[0m arn                       = (known after apply)
      [32m+[0m[0m certificate_authority     = (known after apply)
      [32m+[0m[0m cluster_id                = (known after apply)
      [32m+[0m[0m compute_config            = (known after apply)
      [32m+[0m[0m created_at                = (known after apply)
      [32m+[0m[0m enabled_cluster_log_types = (known after apply)
      [32m+[0m[0m endpoint                  = (known after apply)
      [32m+[0m[0m id                        = (known after apply)
      [32m+[0m[0m identity                  = (known after apply)
      [32m+[0m[0m kubernetes_network_config = (known after apply)
      [32m+[0m[0m name                      = "project-bedrock-cluster"
      [32m+[0m[0m outpost_config            = (known after apply)
      [32m+[0m[0m platform_version          = (known after apply)
      [32m+[0m[0m remote_network_config     = (known after apply)
      [32m+[0m[0m role_arn                  = (known after apply)
      [32m+[0m[0m status                    = (known after apply)
      [32m+[0m[0m storage_config            = (known after apply)
      [32m+[0m[0m tags                      = (known after apply)
      [32m+[0m[0m upgrade_policy            = (known after apply)
      [32m+[0m[0m version                   = (known after apply)
      [32m+[0m[0m vpc_config                = (known after apply)
      [32m+[0m[0m zonal_shift_config        = (known after apply)
    }

[1m  # data.aws_eks_cluster_auth.cluster[0m will be read during apply
  # (depends on a resource or a module with changes pending)
[0m [36m<=[0m[0m data "aws_eks_cluster_auth" "cluster" {
      [32m+[0m[0m id    = (known after apply)
      [32m+[0m[0m name  = "project-bedrock-cluster"
      [32m+[0m[0m token = (sensitive value)
    }

[1m  # aws_eks_access_entry.bedrock_dev_view[0m will be created
[0m  [32m+[0m[0m resource "aws_eks_access_entry" "bedrock_dev_view" {
      [32m+[0m[0m access_entry_arn  = (known after apply)
      [32m+[0m[0m cluster_name      = "project-bedrock-cluster"
      [32m+[0m[0m created_at        = (known after apply)
      [32m+[0m[0m id                = (known after apply)
      [32m+[0m[0m kubernetes_groups = (known after apply)
      [32m+[0m[0m modified_at       = (known after apply)
      [32m+[0m[0m principal_arn     = (known after apply)
      [32m+[0m[0m tags_all          = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m type              = "STANDARD"
      [32m+[0m[0m user_name         = (known after apply)
    }

[1m  # aws_eks_access_policy_association.bedrock_dev_view[0m will be created
[0m  [32m+[0m[0m resource "aws_eks_access_policy_association" "bedrock_dev_view" {
      [32m+[0m[0m associated_at = (known after apply)
      [32m+[0m[0m cluster_name  = "project-bedrock-cluster"
      [32m+[0m[0m id            = (known after apply)
      [32m+[0m[0m modified_at   = (known after apply)
      [32m+[0m[0m policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"
      [32m+[0m[0m principal_arn = (known after apply)

      [32m+[0m[0m access_scope {
          [32m+[0m[0m namespaces = [
              [32m+[0m[0m "retail-app",
            ]
          [32m+[0m[0m type       = "namespace"
        }
    }

[1m  # module.addons.aws_eks_addon.cloudwatch_observability[0m will be created
[0m  [32m+[0m[0m resource "aws_eks_addon" "cloudwatch_observability" {
      [32m+[0m[0m addon_name           = "amazon-cloudwatch-observability"
      [32m+[0m[0m addon_version        = (known after apply)
      [32m+[0m[0m arn                  = (known after apply)
      [32m+[0m[0m cluster_name         = "project-bedrock-cluster"
      [32m+[0m[0m configuration_values = (known after apply)
      [32m+[0m[0m created_at           = (known after apply)
      [32m+[0m[0m id                   = (known after apply)
      [32m+[0m[0m modified_at          = (known after apply)
      [32m+[0m[0m tags                 = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all             = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
    }

[1m  # module.addons.helm_release.aws_load_balancer_controller[0m will be created
[0m  [32m+[0m[0m resource "helm_release" "aws_load_balancer_controller" {
      [32m+[0m[0m atomic                     = false
      [32m+[0m[0m chart                      = "aws-load-balancer-controller"
      [32m+[0m[0m cleanup_on_fail            = false
      [32m+[0m[0m create_namespace           = false
      [32m+[0m[0m dependency_update          = false
      [32m+[0m[0m disable_crd_hooks          = false
      [32m+[0m[0m disable_openapi_validation = false
      [32m+[0m[0m disable_webhooks           = false
      [32m+[0m[0m force_update               = false
      [32m+[0m[0m id                         = (known after apply)
      [32m+[0m[0m lint                       = false
      [32m+[0m[0m manifest                   = (known after apply)
      [32m+[0m[0m max_history                = 0
      [32m+[0m[0m metadata                   = (known after apply)
      [32m+[0m[0m name                       = "aws-load-balancer-controller"
      [32m+[0m[0m namespace                  = "kube-system"
      [32m+[0m[0m pass_credentials           = false
      [32m+[0m[0m recreate_pods              = false
      [32m+[0m[0m render_subchart_notes      = true
      [32m+[0m[0m replace                    = false
      [32m+[0m[0m repository                 = "https://aws.github.io/eks-charts"
      [32m+[0m[0m reset_values               = false
      [32m+[0m[0m reuse_values               = false
      [32m+[0m[0m skip_crds                  = false
      [32m+[0m[0m status                     = "deployed"
      [32m+[0m[0m timeout                    = 300
      [32m+[0m[0m values                     = (known after apply)
      [32m+[0m[0m verify                     = false
      [32m+[0m[0m version                    = "3.4.2"
      [32m+[0m[0m wait                       = true
      [32m+[0m[0m wait_for_jobs              = false
    }

[1m  # module.dynamodb.aws_dynamodb_table.orders[0m will be created
[0m  [32m+[0m[0m resource "aws_dynamodb_table" "orders" {
      [32m+[0m[0m arn              = (known after apply)
      [32m+[0m[0m billing_mode     = "PAY_PER_REQUEST"
      [32m+[0m[0m hash_key         = "id"
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m name             = "bedrock-orders"
      [32m+[0m[0m read_capacity    = (known after apply)
      [32m+[0m[0m stream_arn       = (known after apply)
      [32m+[0m[0m stream_label     = (known after apply)
      [32m+[0m[0m stream_view_type = (known after apply)
      [32m+[0m[0m tags             = {
          [32m+[0m[0m "Name" = "bedrock-orders"
        }
      [32m+[0m[0m tags_all         = {
          [32m+[0m[0m "Name"    = "bedrock-orders"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m write_capacity   = (known after apply)

      [32m+[0m[0m attribute {
          [32m+[0m[0m name = "customerId"
          [32m+[0m[0m type = "S"
        }
      [32m+[0m[0m attribute {
          [32m+[0m[0m name = "id"
          [32m+[0m[0m type = "S"
        }

      [32m+[0m[0m global_secondary_index {
          [32m+[0m[0m hash_key           = "customerId"
          [32m+[0m[0m name               = "idx_global_customerId"
          [32m+[0m[0m non_key_attributes = []
          [32m+[0m[0m projection_type    = "ALL"
          [32m+[0m[0m read_capacity      = (known after apply)
          [32m+[0m[0m write_capacity     = (known after apply)
            [90m# (1 unchanged attribute hidden)[0m[0m
        }

      [32m+[0m[0m point_in_time_recovery (known after apply)

      [32m+[0m[0m server_side_encryption (known after apply)

      [32m+[0m[0m ttl (known after apply)
    }

[1m  # module.ecr.aws_ecr_repository.cart[0m will be created
[0m  [32m+[0m[0m resource "aws_ecr_repository" "cart" {
      [32m+[0m[0m arn                  = (known after apply)
      [32m+[0m[0m id                   = (known after apply)
      [32m+[0m[0m image_tag_mutability = "MUTABLE"
      [32m+[0m[0m name                 = "retail-cart"
      [32m+[0m[0m registry_id          = (known after apply)
      [32m+[0m[0m repository_url       = (known after apply)
      [32m+[0m[0m tags_all             = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }

      [32m+[0m[0m image_scanning_configuration {
          [32m+[0m[0m scan_on_push = true
        }
    }

[1m  # module.ecr.aws_ecr_repository.catalog[0m will be created
[0m  [32m+[0m[0m resource "aws_ecr_repository" "catalog" {
      [32m+[0m[0m arn                  = (known after apply)
      [32m+[0m[0m id                   = (known after apply)
      [32m+[0m[0m image_tag_mutability = "MUTABLE"
      [32m+[0m[0m name                 = "retail-catalog"
      [32m+[0m[0m registry_id          = (known after apply)
      [32m+[0m[0m repository_url       = (known after apply)
      [32m+[0m[0m tags_all             = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }

      [32m+[0m[0m image_scanning_configuration {
          [32m+[0m[0m scan_on_push = true
        }
    }

[1m  # module.ecr.aws_ecr_repository.checkout[0m will be created
[0m  [32m+[0m[0m resource "aws_ecr_repository" "checkout" {
      [32m+[0m[0m arn                  = (known after apply)
      [32m+[0m[0m id                   = (known after apply)
      [32m+[0m[0m image_tag_mutability = "MUTABLE"
      [32m+[0m[0m name                 = "retail-checkout"
      [32m+[0m[0m registry_id          = (known after apply)
      [32m+[0m[0m repository_url       = (known after apply)
      [32m+[0m[0m tags_all             = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }

      [32m+[0m[0m image_scanning_configuration {
          [32m+[0m[0m scan_on_push = true
        }
    }

[1m  # module.ecr.aws_ecr_repository.orders[0m will be created
[0m  [32m+[0m[0m resource "aws_ecr_repository" "orders" {
      [32m+[0m[0m arn                  = (known after apply)
      [32m+[0m[0m id                   = (known after apply)
      [32m+[0m[0m image_tag_mutability = "MUTABLE"
      [32m+[0m[0m name                 = "retail-orders"
      [32m+[0m[0m registry_id          = (known after apply)
      [32m+[0m[0m repository_url       = (known after apply)
      [32m+[0m[0m tags_all             = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }

      [32m+[0m[0m image_scanning_configuration {
          [32m+[0m[0m scan_on_push = true
        }
    }

[1m  # module.ecr.aws_ecr_repository.ui[0m will be created
[0m  [32m+[0m[0m resource "aws_ecr_repository" "ui" {
      [32m+[0m[0m arn                  = (known after apply)
      [32m+[0m[0m id                   = (known after apply)
      [32m+[0m[0m image_tag_mutability = "MUTABLE"
      [32m+[0m[0m name                 = "retail-ui"
      [32m+[0m[0m registry_id          = (known after apply)
      [32m+[0m[0m repository_url       = (known after apply)
      [32m+[0m[0m tags_all             = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }

      [32m+[0m[0m image_scanning_configuration {
          [32m+[0m[0m scan_on_push = true
        }
    }

[1m  # module.iam.data.aws_iam_policy_document.alb_assume_role[0m will be read during apply
  # (config refers to values not yet known)
[0m [36m<=[0m[0m data "aws_iam_policy_document" "alb_assume_role" {
      [32m+[0m[0m id            = (known after apply)
      [32m+[0m[0m json          = (known after apply)
      [32m+[0m[0m minified_json = (known after apply)

      [32m+[0m[0m statement {
          [32m+[0m[0m actions = [
              [32m+[0m[0m "sts:AssumeRoleWithWebIdentity",
            ]

          [32m+[0m[0m condition {
              [32m+[0m[0m test     = "StringEquals"
              [32m+[0m[0m values   = [
                  [32m+[0m[0m "system:serviceaccount:kube-system:aws-load-balancer-controller",
                ]
              [32m+[0m[0m variable = (known after apply)
            }

          [32m+[0m[0m principals {
              [32m+[0m[0m identifiers = [
                  [32m+[0m[0m (known after apply),
                ]
              [32m+[0m[0m type        = "Federated"
            }
        }
    }

[1m  # module.iam.data.aws_iam_policy_document.github_deployment_trust[0m will be read during apply
  # (config refers to values not yet known)
[0m [36m<=[0m[0m data "aws_iam_policy_document" "github_deployment_trust" {
      [32m+[0m[0m id            = (known after apply)
      [32m+[0m[0m json          = (known after apply)
      [32m+[0m[0m minified_json = (known after apply)

      [32m+[0m[0m statement {
          [32m+[0m[0m actions = [
              [32m+[0m[0m "sts:AssumeRoleWithWebIdentity",
            ]
          [32m+[0m[0m effect  = "Allow"
          [32m+[0m[0m sid     = "GitHubOIDCTrust"

          [32m+[0m[0m condition {
              [32m+[0m[0m test     = "StringEquals"
              [32m+[0m[0m values   = [
                  [32m+[0m[0m "sts.amazonaws.com",
                ]
              [32m+[0m[0m variable = "token.actions.githubusercontent.com:aud"
            }
          [32m+[0m[0m condition {
              [32m+[0m[0m test     = "StringLike"
              [32m+[0m[0m values   = [
                  [32m+[0m[0m "repo:SiliasOdion809/Project-Fortress:ref:refs/heads/main",
                  [32m+[0m[0m "repo:SiliasOdion809/Project-Fortress:ref:refs/heads/feature/*",
                ]
              [32m+[0m[0m variable = "token.actions.githubusercontent.com:sub"
            }

          [32m+[0m[0m principals {
              [32m+[0m[0m identifiers = [
                  [32m+[0m[0m (known after apply),
                ]
              [32m+[0m[0m type        = "Federated"
            }
        }
    }

[1m  # module.iam.data.aws_iam_policy_document.lambda_mysql_secret[0m will be read during apply
  # (config refers to values not yet known)
[0m [36m<=[0m[0m data "aws_iam_policy_document" "lambda_mysql_secret" {
      [32m+[0m[0m id            = (known after apply)
      [32m+[0m[0m json          = (known after apply)
      [32m+[0m[0m minified_json = (known after apply)

      [32m+[0m[0m statement {
          [32m+[0m[0m actions   = [
              [32m+[0m[0m "secretsmanager:GetSecretValue",
            ]
          [32m+[0m[0m effect    = "Allow"
          [32m+[0m[0m resources = [
              [32m+[0m[0m (known after apply),
            ]
          [32m+[0m[0m sid       = "ReadMySQLSecret"
        }
    }

[1m  # module.iam.data.aws_iam_policy_document.lambda_ssm_parameters[0m will be read during apply
  # (config refers to values not yet known)
[0m [36m<=[0m[0m data "aws_iam_policy_document" "lambda_ssm_parameters" {
      [32m+[0m[0m id            = (known after apply)
      [32m+[0m[0m json          = (known after apply)
      [32m+[0m[0m minified_json = (known after apply)

      [32m+[0m[0m statement {
          [32m+[0m[0m actions   = [
              [32m+[0m[0m "ssm:GetParameter",
            ]
          [32m+[0m[0m effect    = "Allow"
          [32m+[0m[0m resources = [
              [32m+[0m[0m (known after apply),
              [32m+[0m[0m (known after apply),
            ]
          [32m+[0m[0m sid       = "ReadSSMParameters"
        }
    }

[1m  # module.iam.aws_iam_policy.dynamodb_access[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_policy" "dynamodb_access" {
      [32m+[0m[0m arn              = (known after apply)
      [32m+[0m[0m attachment_count = (known after apply)
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m name             = "bedrock-dynamodb-access"
      [32m+[0m[0m name_prefix      = (known after apply)
      [32m+[0m[0m path             = "/"
      [32m+[0m[0m policy           = jsonencode(
            {
              [32m+[0m[0m Statement = [
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = [
                          [32m+[0m[0m "dynamodb:GetItem",
                          [32m+[0m[0m "dynamodb:PutItem",
                          [32m+[0m[0m "dynamodb:UpdateItem",
                          [32m+[0m[0m "dynamodb:DeleteItem",
                          [32m+[0m[0m "dynamodb:Query",
                          [32m+[0m[0m "dynamodb:Scan",
                        ]
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = [
                          [32m+[0m[0m "arn:aws:dynamodb:us-east-1:561876735341:table/bedrock-orders",
                          [32m+[0m[0m "arn:aws:dynamodb:us-east-1:561876735341:table/bedrock-orders/*",
                        ]
                    },
                ]
              [32m+[0m[0m Version   = "2012-10-17"
            }
        )
      [32m+[0m[0m policy_id        = (known after apply)
      [32m+[0m[0m tags_all         = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
    }

[1m  # module.iam.aws_iam_policy.github_terraform_permissions[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_policy" "github_terraform_permissions" {
      [32m+[0m[0m arn              = (known after apply)
      [32m+[0m[0m attachment_count = (known after apply)
      [32m+[0m[0m description      = "Policy for GitHub Actions to manage Terraform resources"
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m name             = "project-fortress-github-terraform-policy"
      [32m+[0m[0m name_prefix      = (known after apply)
      [32m+[0m[0m path             = "/"
      [32m+[0m[0m policy           = jsonencode(
            {
              [32m+[0m[0m Statement = [
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "s3:ListBucket"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "arn:aws:s3:::project-bedrock-tfstate-silias"
                      [32m+[0m[0m Sid      = "TerraformStateBucket"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = [
                          [32m+[0m[0m "s3:PutObject",
                          [32m+[0m[0m "s3:GetObjectVersion",
                          [32m+[0m[0m "s3:GetObject",
                          [32m+[0m[0m "s3:DeleteObject",
                        ]
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "arn:aws:s3:::project-bedrock-tfstate-silias/*"
                      [32m+[0m[0m Sid      = "TerraformStateObjects"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = [
                          [32m+[0m[0m "s3:PutObject",
                          [32m+[0m[0m "s3:PutBucketPublicAccessBlock",
                          [32m+[0m[0m "s3:PutBucketEncryption",
                          [32m+[0m[0m "s3:ListBucket",
                          [32m+[0m[0m "s3:GetObject",
                          [32m+[0m[0m "s3:GetEncryptionConfiguration",
                          [32m+[0m[0m "s3:GetBucketVersioning",
                          [32m+[0m[0m "s3:GetBucketPublicAccessBlock",
                          [32m+[0m[0m "s3:GetBucketPolicy",
                          [32m+[0m[0m "s3:GetBucketLocation",
                          [32m+[0m[0m "s3:GetBucketAcl",
                          [32m+[0m[0m "s3:DeleteObject",
                          [32m+[0m[0m "s3:DeleteBucket",
                          [32m+[0m[0m "s3:CreateBucket",
                        ]
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "S3"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "ec2:*"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "EC2"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "iam:*"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "IAM"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "eks:*"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "EKS"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "ecr:*"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "ECR"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "lambda:*"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "Lambda"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "logs:*"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "CloudWatchLogs"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "cloudwatch:*"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "CloudWatch"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "dynamodb:*"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "DynamoDB"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "kms:*"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "KMS"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "secretsmanager:*"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "SecretsManager"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "ssm:*"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "SSM"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "sts:GetCallerIdentity"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "STS"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "rds:DescribeDBSubnetGroups"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "RDS"
                    },
                ]
              [32m+[0m[0m Version   = "2012-10-17"
            }
        )
      [32m+[0m[0m policy_id        = (known after apply)
      [32m+[0m[0m tags             = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tags_all         = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
    }

[1m  # module.iam.aws_iam_policy.lambda_cloudwatch_logs[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_policy" "lambda_cloudwatch_logs" {
      [32m+[0m[0m arn              = (known after apply)
      [32m+[0m[0m attachment_count = (known after apply)
      [32m+[0m[0m description      = "Customer-managed CloudWatch Logs policy for Project Fortress Lambda functions"
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m name             = "project-fortress-lambda-cloudwatch-logs"
      [32m+[0m[0m name_prefix      = (known after apply)
      [32m+[0m[0m path             = "/"
      [32m+[0m[0m policy           = jsonencode(
            {
              [32m+[0m[0m Statement = [
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = "logs:CreateLogGroup"
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "*"
                      [32m+[0m[0m Sid      = "CreateLogGroup"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action   = [
                          [32m+[0m[0m "logs:PutLogEvents",
                          [32m+[0m[0m "logs:CreateLogStream",
                        ]
                      [32m+[0m[0m Effect   = "Allow"
                      [32m+[0m[0m Resource = "arn:aws:logs:*:*:log-group:/aws/lambda/project-fortress-*:*"
                      [32m+[0m[0m Sid      = "WriteLogs"
                    },
                ]
              [32m+[0m[0m Version   = "2012-10-17"
            }
        )
      [32m+[0m[0m policy_id        = (known after apply)
      [32m+[0m[0m tags_all         = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
    }

[1m  # module.iam.aws_iam_policy.lambda_mysql_secret[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_policy" "lambda_mysql_secret" {
      [32m+[0m[0m arn              = (known after apply)
      [32m+[0m[0m attachment_count = (known after apply)
      [32m+[0m[0m description      = "Allow Lambda to retrieve the MySQL secret from AWS Secrets Manager"
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m name             = "project-fortress-lambda-mysql-secret"
      [32m+[0m[0m name_prefix      = (known after apply)
      [32m+[0m[0m path             = "/"
      [32m+[0m[0m policy           = (known after apply)
      [32m+[0m[0m policy_id        = (known after apply)
      [32m+[0m[0m tags_all         = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
    }

[1m  # module.iam.aws_iam_policy.lambda_ssm_parameters[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_policy" "lambda_ssm_parameters" {
      [32m+[0m[0m arn              = (known after apply)
      [32m+[0m[0m attachment_count = (known after apply)
      [32m+[0m[0m description      = "Allow Lambda to read required SSM parameters"
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m name             = "project-fortress-lambda-ssm-parameters"
      [32m+[0m[0m name_prefix      = (known after apply)
      [32m+[0m[0m path             = "/"
      [32m+[0m[0m policy           = (known after apply)
      [32m+[0m[0m policy_id        = (known after apply)
      [32m+[0m[0m tags_all         = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
    }

[1m  # module.iam.aws_iam_role.alb_controller[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role" "alb_controller" {
      [32m+[0m[0m arn                   = (known after apply)
      [32m+[0m[0m assume_role_policy    = (known after apply)
      [32m+[0m[0m create_date           = (known after apply)
      [32m+[0m[0m force_detach_policies = false
      [32m+[0m[0m id                    = (known after apply)
      [32m+[0m[0m managed_policy_arns   = (known after apply)
      [32m+[0m[0m max_session_duration  = 3600
      [32m+[0m[0m name                  = "alb-controller-irsa-role"
      [32m+[0m[0m name_prefix           = (known after apply)
      [32m+[0m[0m path                  = "/"
      [32m+[0m[0m tags_all              = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m unique_id             = (known after apply)

      [32m+[0m[0m inline_policy (known after apply)
    }

[1m  # module.iam.aws_iam_role.github_deployment[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role" "github_deployment" {
      [32m+[0m[0m arn                   = (known after apply)
      [32m+[0m[0m assume_role_policy    = (known after apply)
      [32m+[0m[0m create_date           = (known after apply)
      [32m+[0m[0m force_detach_policies = false
      [32m+[0m[0m id                    = (known after apply)
      [32m+[0m[0m managed_policy_arns   = (known after apply)
      [32m+[0m[0m max_session_duration  = 3600
      [32m+[0m[0m name                  = "project-fortress-github-deployment-role"
      [32m+[0m[0m name_prefix           = (known after apply)
      [32m+[0m[0m path                  = "/"
      [32m+[0m[0m tags                  = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tags_all              = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m unique_id             = (known after apply)

      [32m+[0m[0m inline_policy (known after apply)
    }

[1m  # module.iam.aws_iam_role.lambda_role[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role" "lambda_role" {
      [32m+[0m[0m arn                   = (known after apply)
      [32m+[0m[0m assume_role_policy    = jsonencode(
            {
              [32m+[0m[0m Statement = [
                  [32m+[0m[0m {
                      [32m+[0m[0m Action    = "sts:AssumeRole"
                      [32m+[0m[0m Effect    = "Allow"
                      [32m+[0m[0m Principal = {
                          [32m+[0m[0m Service = "lambda.amazonaws.com"
                        }
                    },
                ]
              [32m+[0m[0m Version   = "2012-10-17"
            }
        )
      [32m+[0m[0m create_date           = (known after apply)
      [32m+[0m[0m force_detach_policies = false
      [32m+[0m[0m id                    = (known after apply)
      [32m+[0m[0m managed_policy_arns   = (known after apply)
      [32m+[0m[0m max_session_duration  = 3600
      [32m+[0m[0m name                  = "bedrock-asset-processor-role"
      [32m+[0m[0m name_prefix           = (known after apply)
      [32m+[0m[0m path                  = "/"
      [32m+[0m[0m tags_all              = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m unique_id             = (known after apply)

      [32m+[0m[0m inline_policy (known after apply)
    }

[1m  # module.iam.aws_iam_role_policy_attachment.alb_controller[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "alb_controller" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = "arn:aws:iam::561876735341:policy/AWSLoadBalancerControllerIAMPolicy"
      [32m+[0m[0m role       = "alb-controller-irsa-role"
    }

[1m  # module.iam.aws_iam_role_policy_attachment.github_terraform_permissions_attachment[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "github_terraform_permissions_attachment" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = (known after apply)
      [32m+[0m[0m role       = "project-fortress-github-deployment-role"
    }

[1m  # module.iam.aws_iam_role_policy_attachment.lambda_cloudwatch_logs[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "lambda_cloudwatch_logs" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = (known after apply)
      [32m+[0m[0m role       = "bedrock-asset-processor-role"
    }

[1m  # module.iam.aws_iam_role_policy_attachment.lambda_mysql_secret[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "lambda_mysql_secret" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = (known after apply)
      [32m+[0m[0m role       = "bedrock-asset-processor-role"
    }

[1m  # module.iam.aws_iam_role_policy_attachment.lambda_ssm_parameters[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "lambda_ssm_parameters" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = (known after apply)
      [32m+[0m[0m role       = "bedrock-asset-processor-role"
    }

[1m  # module.iam.aws_iam_user.bedrock_dev_view[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_user" "bedrock_dev_view" {
      [32m+[0m[0m arn           = (known after apply)
      [32m+[0m[0m force_destroy = false
      [32m+[0m[0m id            = (known after apply)
      [32m+[0m[0m name          = "bedrock-dev-view"
      [32m+[0m[0m path          = "/"
      [32m+[0m[0m tags          = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all      = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m unique_id     = (known after apply)
    }

[1m  # module.iam.aws_iam_user_policy.bedrock_dev_s3_upload[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_user_policy" "bedrock_dev_s3_upload" {
      [32m+[0m[0m id          = (known after apply)
      [32m+[0m[0m name        = "bedrock-dev-s3-upload"
      [32m+[0m[0m name_prefix = (known after apply)
      [32m+[0m[0m policy      = (known after apply)
      [32m+[0m[0m user        = "bedrock-dev-view"
    }

[1m  # module.iam.aws_iam_user_policy_attachment.readonly[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_user_policy_attachment" "readonly" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
      [32m+[0m[0m user       = "bedrock-dev-view"
    }

[1m  # module.kms.aws_kms_alias.project_fortress[0m will be created
[0m  [32m+[0m[0m resource "aws_kms_alias" "project_fortress" {
      [32m+[0m[0m arn            = (known after apply)
      [32m+[0m[0m id             = (known after apply)
      [32m+[0m[0m name           = "alias/project-fortress-dev"
      [32m+[0m[0m name_prefix    = (known after apply)
      [32m+[0m[0m target_key_arn = (known after apply)
      [32m+[0m[0m target_key_id  = (known after apply)
    }

[1m  # module.kms.aws_kms_key.project_fortress[0m will be created
[0m  [32m+[0m[0m resource "aws_kms_key" "project_fortress" {
      [32m+[0m[0m arn                                = (known after apply)
      [32m+[0m[0m bypass_policy_lockout_safety_check = false
      [32m+[0m[0m customer_master_key_spec           = "SYMMETRIC_DEFAULT"
      [32m+[0m[0m deletion_window_in_days            = 30
      [32m+[0m[0m description                        = "Customer managed KMS key for Project Fortress"
      [32m+[0m[0m enable_key_rotation                = true
      [32m+[0m[0m id                                 = (known after apply)
      [32m+[0m[0m is_enabled                         = true
      [32m+[0m[0m key_id                             = (known after apply)
      [32m+[0m[0m key_usage                          = "ENCRYPT_DECRYPT"
      [32m+[0m[0m multi_region                       = (known after apply)
      [32m+[0m[0m policy                             = (known after apply)
      [32m+[0m[0m rotation_period_in_days            = (known after apply)
      [32m+[0m[0m tags                               = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-kms"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tags_all                           = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-kms"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
    }

[1m  # module.lambda.aws_lambda_function.asset_processor[0m will be created
[0m  [32m+[0m[0m resource "aws_lambda_function" "asset_processor" {
      [32m+[0m[0m architectures                  = (known after apply)
      [32m+[0m[0m arn                            = (known after apply)
      [32m+[0m[0m code_sha256                    = (known after apply)
      [32m+[0m[0m filename                       = "../lambda/src/function.zip"
      [32m+[0m[0m function_name                  = "bedrock-asset-processor"
      [32m+[0m[0m handler                        = "lambda_function.lambda_handler"
      [32m+[0m[0m id                             = (known after apply)
      [32m+[0m[0m invoke_arn                     = (known after apply)
      [32m+[0m[0m last_modified                  = (known after apply)
      [32m+[0m[0m memory_size                    = 128
      [32m+[0m[0m package_type                   = "Zip"
      [32m+[0m[0m publish                        = false
      [32m+[0m[0m qualified_arn                  = (known after apply)
      [32m+[0m[0m qualified_invoke_arn           = (known after apply)
      [32m+[0m[0m reserved_concurrent_executions = -1
      [32m+[0m[0m role                           = (known after apply)
      [32m+[0m[0m runtime                        = "python3.12"
      [32m+[0m[0m signing_job_arn                = (known after apply)
      [32m+[0m[0m signing_profile_version_arn    = (known after apply)
      [32m+[0m[0m skip_destroy                   = false
      [32m+[0m[0m source_code_hash               = "O8KU2UY/YhODTSrndRZH7ju8b86UCTCELJ+7RIx4M8A="
      [32m+[0m[0m source_code_size               = (known after apply)
      [32m+[0m[0m tags                           = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all                       = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m timeout                        = 3
      [32m+[0m[0m version                        = (known after apply)

      [32m+[0m[0m ephemeral_storage (known after apply)

      [32m+[0m[0m logging_config (known after apply)

      [32m+[0m[0m tracing_config (known after apply)
    }

[1m  # module.lambda.aws_lambda_permission.allow_s3[0m will be created
[0m  [32m+[0m[0m resource "aws_lambda_permission" "allow_s3" {
      [32m+[0m[0m action              = "lambda:InvokeFunction"
      [32m+[0m[0m function_name       = "bedrock-asset-processor"
      [32m+[0m[0m id                  = (known after apply)
      [32m+[0m[0m principal           = "s3.amazonaws.com"
      [32m+[0m[0m source_arn          = (known after apply)
      [32m+[0m[0m statement_id        = "s3-trigger"
      [32m+[0m[0m statement_id_prefix = (known after apply)
    }

[1m  # module.lambda.aws_s3_bucket_notification.trigger[0m will be created
[0m  [32m+[0m[0m resource "aws_s3_bucket_notification" "trigger" {
      [32m+[0m[0m bucket      = "bedrock-assets-alt-soe-025-3757"
      [32m+[0m[0m eventbridge = false
      [32m+[0m[0m id          = (known after apply)

      [32m+[0m[0m lambda_function {
          [32m+[0m[0m events              = [
              [32m+[0m[0m "s3:ObjectCreated:*",
            ]
          [32m+[0m[0m id                  = (known after apply)
          [32m+[0m[0m lambda_function_arn = (known after apply)
        }
    }

[1m  # module.monitoring.aws_cloudwatch_log_group.lambda_logs[0m will be created
[0m  [32m+[0m[0m resource "aws_cloudwatch_log_group" "lambda_logs" {
      [32m+[0m[0m arn               = (known after apply)
      [32m+[0m[0m id                = (known after apply)
      [32m+[0m[0m log_group_class   = (known after apply)
      [32m+[0m[0m name              = "/aws/lambda/bedrock-asset-processor"
      [32m+[0m[0m name_prefix       = (known after apply)
      [32m+[0m[0m retention_in_days = 30
      [32m+[0m[0m skip_destroy      = false
      [32m+[0m[0m tags_all          = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
    }

[1m  # module.networking.aws_eip.nat_eip[0m will be created
[0m  [32m+[0m[0m resource "aws_eip" "nat_eip" {
      [32m+[0m[0m allocation_id        = (known after apply)
      [32m+[0m[0m arn                  = (known after apply)
      [32m+[0m[0m association_id       = (known after apply)
      [32m+[0m[0m carrier_ip           = (known after apply)
      [32m+[0m[0m customer_owned_ip    = (known after apply)
      [32m+[0m[0m domain               = "vpc"
      [32m+[0m[0m id                   = (known after apply)
      [32m+[0m[0m instance             = (known after apply)
      [32m+[0m[0m ipam_pool_id         = (known after apply)
      [32m+[0m[0m network_border_group = (known after apply)
      [32m+[0m[0m network_interface    = (known after apply)
      [32m+[0m[0m private_dns          = (known after apply)
      [32m+[0m[0m private_ip           = (known after apply)
      [32m+[0m[0m ptr_record           = (known after apply)
      [32m+[0m[0m public_dns           = (known after apply)
      [32m+[0m[0m public_ip            = (known after apply)
      [32m+[0m[0m public_ipv4_pool     = (known after apply)
      [32m+[0m[0m tags                 = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all             = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m vpc                  = (known after apply)
    }

[1m  # module.networking.aws_internet_gateway.igw[0m will be created
[0m  [32m+[0m[0m resource "aws_internet_gateway" "igw" {
      [32m+[0m[0m arn      = (known after apply)
      [32m+[0m[0m id       = (known after apply)
      [32m+[0m[0m owner_id = (known after apply)
      [32m+[0m[0m tags     = {
          [32m+[0m[0m "Name"    = "project-bedrock-igw"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all = {
          [32m+[0m[0m "Name"    = "project-bedrock-igw"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m vpc_id   = (known after apply)
    }

[1m  # module.networking.aws_nat_gateway.nat[0m will be created
[0m  [32m+[0m[0m resource "aws_nat_gateway" "nat" {
      [32m+[0m[0m allocation_id                      = (known after apply)
      [32m+[0m[0m association_id                     = (known after apply)
      [32m+[0m[0m connectivity_type                  = "public"
      [32m+[0m[0m id                                 = (known after apply)
      [32m+[0m[0m network_interface_id               = (known after apply)
      [32m+[0m[0m private_ip                         = (known after apply)
      [32m+[0m[0m public_ip                          = (known after apply)
      [32m+[0m[0m secondary_private_ip_address_count = (known after apply)
      [32m+[0m[0m secondary_private_ip_addresses     = (known after apply)
      [32m+[0m[0m subnet_id                          = (known after apply)
      [32m+[0m[0m tags                               = {
          [32m+[0m[0m "Name"    = "project-bedrock-nat"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all                           = {
          [32m+[0m[0m "Name"    = "project-bedrock-nat"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
    }

[1m  # module.networking.aws_route_table.private[0m will be created
[0m  [32m+[0m[0m resource "aws_route_table" "private" {
      [32m+[0m[0m arn              = (known after apply)
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m owner_id         = (known after apply)
      [32m+[0m[0m propagating_vgws = (known after apply)
      [32m+[0m[0m route            = [
          [32m+[0m[0m {
              [32m+[0m[0m cidr_block                 = "0.0.0.0/0"
              [32m+[0m[0m nat_gateway_id             = (known after apply)
                [90m# (11 unchanged attributes hidden)[0m[0m
            },
        ]
      [32m+[0m[0m tags             = {
          [32m+[0m[0m "Name"    = "private-route-table"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all         = {
          [32m+[0m[0m "Name"    = "private-route-table"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m vpc_id           = (known after apply)
    }

[1m  # module.networking.aws_route_table.public[0m will be created
[0m  [32m+[0m[0m resource "aws_route_table" "public" {
      [32m+[0m[0m arn              = (known after apply)
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m owner_id         = (known after apply)
      [32m+[0m[0m propagating_vgws = (known after apply)
      [32m+[0m[0m route            = [
          [32m+[0m[0m {
              [32m+[0m[0m cidr_block                 = "0.0.0.0/0"
              [32m+[0m[0m gateway_id                 = (known after apply)
                [90m# (11 unchanged attributes hidden)[0m[0m
            },
        ]
      [32m+[0m[0m tags             = {
          [32m+[0m[0m "Name"    = "public-route-table"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all         = {
          [32m+[0m[0m "Name"    = "public-route-table"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m vpc_id           = (known after apply)
    }

[1m  # module.networking.aws_route_table_association.private_1[0m will be created
[0m  [32m+[0m[0m resource "aws_route_table_association" "private_1" {
      [32m+[0m[0m id             = (known after apply)
      [32m+[0m[0m route_table_id = (known after apply)
      [32m+[0m[0m subnet_id      = (known after apply)
    }

[1m  # module.networking.aws_route_table_association.private_2[0m will be created
[0m  [32m+[0m[0m resource "aws_route_table_association" "private_2" {
      [32m+[0m[0m id             = (known after apply)
      [32m+[0m[0m route_table_id = (known after apply)
      [32m+[0m[0m subnet_id      = (known after apply)
    }

[1m  # module.networking.aws_route_table_association.public_1[0m will be created
[0m  [32m+[0m[0m resource "aws_route_table_association" "public_1" {
      [32m+[0m[0m id             = (known after apply)
      [32m+[0m[0m route_table_id = (known after apply)
      [32m+[0m[0m subnet_id      = (known after apply)
    }

[1m  # module.networking.aws_route_table_association.public_2[0m will be created
[0m  [32m+[0m[0m resource "aws_route_table_association" "public_2" {
      [32m+[0m[0m id             = (known after apply)
      [32m+[0m[0m route_table_id = (known after apply)
      [32m+[0m[0m subnet_id      = (known after apply)
    }

[1m  # module.networking.aws_subnet.private_1[0m will be created
[0m  [32m+[0m[0m resource "aws_subnet" "private_1" {
      [32m+[0m[0m arn                                            = (known after apply)
      [32m+[0m[0m assign_ipv6_address_on_creation                = false
      [32m+[0m[0m availability_zone                              = "us-east-1a"
      [32m+[0m[0m availability_zone_id                           = (known after apply)
      [32m+[0m[0m cidr_block                                     = "10.0.3.0/24"
      [32m+[0m[0m enable_dns64                                   = false
      [32m+[0m[0m enable_resource_name_dns_a_record_on_launch    = false
      [32m+[0m[0m enable_resource_name_dns_aaaa_record_on_launch = false
      [32m+[0m[0m id                                             = (known after apply)
      [32m+[0m[0m ipv6_cidr_block_association_id                 = (known after apply)
      [32m+[0m[0m ipv6_native                                    = false
      [32m+[0m[0m map_public_ip_on_launch                        = false
      [32m+[0m[0m owner_id                                       = (known after apply)
      [32m+[0m[0m private_dns_hostname_type_on_launch            = (known after apply)
      [32m+[0m[0m tags                                           = {
          [32m+[0m[0m "Name"                                          = "private-subnet-1"
          [32m+[0m[0m "Project"                                       = "karatu-2025-capstone"
          [32m+[0m[0m "kubernetes.io/cluster/project-bedrock-cluster" = "shared"
          [32m+[0m[0m "kubernetes.io/role/internal-elb"               = "1"
        }
      [32m+[0m[0m tags_all                                       = {
          [32m+[0m[0m "Name"                                          = "private-subnet-1"
          [32m+[0m[0m "Project"                                       = "karatu-2025-capstone"
          [32m+[0m[0m "kubernetes.io/cluster/project-bedrock-cluster" = "shared"
          [32m+[0m[0m "kubernetes.io/role/internal-elb"               = "1"
        }
      [32m+[0m[0m vpc_id                                         = (known after apply)
    }

[1m  # module.networking.aws_subnet.private_2[0m will be created
[0m  [32m+[0m[0m resource "aws_subnet" "private_2" {
      [32m+[0m[0m arn                                            = (known after apply)
      [32m+[0m[0m assign_ipv6_address_on_creation                = false
      [32m+[0m[0m availability_zone                              = "us-east-1b"
      [32m+[0m[0m availability_zone_id                           = (known after apply)
      [32m+[0m[0m cidr_block                                     = "10.0.4.0/24"
      [32m+[0m[0m enable_dns64                                   = false
      [32m+[0m[0m enable_resource_name_dns_a_record_on_launch    = false
      [32m+[0m[0m enable_resource_name_dns_aaaa_record_on_launch = false
      [32m+[0m[0m id                                             = (known after apply)
      [32m+[0m[0m ipv6_cidr_block_association_id                 = (known after apply)
      [32m+[0m[0m ipv6_native                                    = false
      [32m+[0m[0m map_public_ip_on_launch                        = false
      [32m+[0m[0m owner_id                                       = (known after apply)
      [32m+[0m[0m private_dns_hostname_type_on_launch            = (known after apply)
      [32m+[0m[0m tags                                           = {
          [32m+[0m[0m "Name"                                          = "private-subnet-2"
          [32m+[0m[0m "Project"                                       = "karatu-2025-capstone"
          [32m+[0m[0m "kubernetes.io/cluster/project-bedrock-cluster" = "shared"
          [32m+[0m[0m "kubernetes.io/role/internal-elb"               = "1"
        }
      [32m+[0m[0m tags_all                                       = {
          [32m+[0m[0m "Name"                                          = "private-subnet-2"
          [32m+[0m[0m "Project"                                       = "karatu-2025-capstone"
          [32m+[0m[0m "kubernetes.io/cluster/project-bedrock-cluster" = "shared"
          [32m+[0m[0m "kubernetes.io/role/internal-elb"               = "1"
        }
      [32m+[0m[0m vpc_id                                         = (known after apply)
    }

[1m  # module.networking.aws_subnet.public_1[0m will be created
[0m  [32m+[0m[0m resource "aws_subnet" "public_1" {
      [32m+[0m[0m arn                                            = (known after apply)
      [32m+[0m[0m assign_ipv6_address_on_creation                = false
      [32m+[0m[0m availability_zone                              = "us-east-1a"
      [32m+[0m[0m availability_zone_id                           = (known after apply)
      [32m+[0m[0m cidr_block                                     = "10.0.1.0/24"
      [32m+[0m[0m enable_dns64                                   = false
      [32m+[0m[0m enable_resource_name_dns_a_record_on_launch    = false
      [32m+[0m[0m enable_resource_name_dns_aaaa_record_on_launch = false
      [32m+[0m[0m id                                             = (known after apply)
      [32m+[0m[0m ipv6_cidr_block_association_id                 = (known after apply)
      [32m+[0m[0m ipv6_native                                    = false
      [32m+[0m[0m map_public_ip_on_launch                        = true
      [32m+[0m[0m owner_id                                       = (known after apply)
      [32m+[0m[0m private_dns_hostname_type_on_launch            = (known after apply)
      [32m+[0m[0m tags                                           = {
          [32m+[0m[0m "Name"                                          = "public-subnet-1"
          [32m+[0m[0m "Project"                                       = "karatu-2025-capstone"
          [32m+[0m[0m "kubernetes.io/cluster/project-bedrock-cluster" = "shared"
          [32m+[0m[0m "kubernetes.io/role/elb"                        = "1"
        }
      [32m+[0m[0m tags_all                                       = {
          [32m+[0m[0m "Name"                                          = "public-subnet-1"
          [32m+[0m[0m "Project"                                       = "karatu-2025-capstone"
          [32m+[0m[0m "kubernetes.io/cluster/project-bedrock-cluster" = "shared"
          [32m+[0m[0m "kubernetes.io/role/elb"                        = "1"
        }
      [32m+[0m[0m vpc_id                                         = (known after apply)
    }

[1m  # module.networking.aws_subnet.public_2[0m will be created
[0m  [32m+[0m[0m resource "aws_subnet" "public_2" {
      [32m+[0m[0m arn                                            = (known after apply)
      [32m+[0m[0m assign_ipv6_address_on_creation                = false
      [32m+[0m[0m availability_zone                              = "us-east-1b"
      [32m+[0m[0m availability_zone_id                           = (known after apply)
      [32m+[0m[0m cidr_block                                     = "10.0.2.0/24"
      [32m+[0m[0m enable_dns64                                   = false
      [32m+[0m[0m enable_resource_name_dns_a_record_on_launch    = false
      [32m+[0m[0m enable_resource_name_dns_aaaa_record_on_launch = false
      [32m+[0m[0m id                                             = (known after apply)
      [32m+[0m[0m ipv6_cidr_block_association_id                 = (known after apply)
      [32m+[0m[0m ipv6_native                                    = false
      [32m+[0m[0m map_public_ip_on_launch                        = true
      [32m+[0m[0m owner_id                                       = (known after apply)
      [32m+[0m[0m private_dns_hostname_type_on_launch            = (known after apply)
      [32m+[0m[0m tags                                           = {
          [32m+[0m[0m "Name"                                          = "public-subnet-2"
          [32m+[0m[0m "Project"                                       = "karatu-2025-capstone"
          [32m+[0m[0m "kubernetes.io/cluster/project-bedrock-cluster" = "shared"
          [32m+[0m[0m "kubernetes.io/role/elb"                        = "1"
        }
      [32m+[0m[0m tags_all                                       = {
          [32m+[0m[0m "Name"                                          = "public-subnet-2"
          [32m+[0m[0m "Project"                                       = "karatu-2025-capstone"
          [32m+[0m[0m "kubernetes.io/cluster/project-bedrock-cluster" = "shared"
          [32m+[0m[0m "kubernetes.io/role/elb"                        = "1"
        }
      [32m+[0m[0m vpc_id                                         = (known after apply)
    }

[1m  # module.networking.aws_vpc.main[0m will be created
[0m  [32m+[0m[0m resource "aws_vpc" "main" {
      [32m+[0m[0m arn                                  = (known after apply)
      [32m+[0m[0m cidr_block                           = "10.0.0.0/16"
      [32m+[0m[0m default_network_acl_id               = (known after apply)
      [32m+[0m[0m default_route_table_id               = (known after apply)
      [32m+[0m[0m default_security_group_id            = (known after apply)
      [32m+[0m[0m dhcp_options_id                      = (known after apply)
      [32m+[0m[0m enable_dns_hostnames                 = true
      [32m+[0m[0m enable_dns_support                   = true
      [32m+[0m[0m enable_network_address_usage_metrics = (known after apply)
      [32m+[0m[0m id                                   = (known after apply)
      [32m+[0m[0m instance_tenancy                     = "default"
      [32m+[0m[0m ipv6_association_id                  = (known after apply)
      [32m+[0m[0m ipv6_cidr_block                      = (known after apply)
      [32m+[0m[0m ipv6_cidr_block_network_border_group = (known after apply)
      [32m+[0m[0m main_route_table_id                  = (known after apply)
      [32m+[0m[0m owner_id                             = (known after apply)
      [32m+[0m[0m tags                                 = {
          [32m+[0m[0m "Name"    = "project-bedrock-vpc"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all                             = {
          [32m+[0m[0m "Name"    = "project-bedrock-vpc"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
    }

[1m  # module.oidc.aws_iam_openid_connect_provider.github[0m will be created
[0m  [32m+[0m[0m resource "aws_iam_openid_connect_provider" "github" {
      [32m+[0m[0m arn             = (known after apply)
      [32m+[0m[0m client_id_list  = [
          [32m+[0m[0m "sts.amazonaws.com",
        ]
      [32m+[0m[0m id              = (known after apply)
      [32m+[0m[0m tags_all        = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m thumbprint_list = [
          [32m+[0m[0m "6938fd4d98bab03faadb97b34396831e3780aea1",
        ]
      [32m+[0m[0m url             = "https://token.actions.githubusercontent.com"
    }

[1m  # module.rds.aws_db_instance.mysql[0m will be created
[0m  [32m+[0m[0m resource "aws_db_instance" "mysql" {
      [32m+[0m[0m address                               = (known after apply)
      [32m+[0m[0m allocated_storage                     = 20
      [32m+[0m[0m apply_immediately                     = false
      [32m+[0m[0m arn                                   = (known after apply)
      [32m+[0m[0m auto_minor_version_upgrade            = true
      [32m+[0m[0m availability_zone                     = (known after apply)
      [32m+[0m[0m backup_retention_period               = (known after apply)
      [32m+[0m[0m backup_target                         = (known after apply)
      [32m+[0m[0m backup_window                         = (known after apply)
      [32m+[0m[0m ca_cert_identifier                    = (known after apply)
      [32m+[0m[0m character_set_name                    = (known after apply)
      [32m+[0m[0m copy_tags_to_snapshot                 = false
      [32m+[0m[0m database_insights_mode                = (known after apply)
      [32m+[0m[0m db_name                               = "catalog"
      [32m+[0m[0m db_subnet_group_name                  = "bedrock-db-subnet-group"
      [32m+[0m[0m dedicated_log_volume                  = false
      [32m+[0m[0m delete_automated_backups              = true
      [32m+[0m[0m domain_fqdn                           = (known after apply)
      [32m+[0m[0m endpoint                              = (known after apply)
      [32m+[0m[0m engine                                = "mysql"
      [32m+[0m[0m engine_lifecycle_support              = (known after apply)
      [32m+[0m[0m engine_version                        = "8.0"
      [32m+[0m[0m engine_version_actual                 = (known after apply)
      [32m+[0m[0m hosted_zone_id                        = (known after apply)
      [32m+[0m[0m id                                    = (known after apply)
      [32m+[0m[0m identifier                            = "bedrock-mysql"
      [32m+[0m[0m identifier_prefix                     = (known after apply)
      [32m+[0m[0m instance_class                        = "db.t3.micro"
      [32m+[0m[0m iops                                  = (known after apply)
      [32m+[0m[0m kms_key_id                            = (known after apply)
      [32m+[0m[0m latest_restorable_time                = (known after apply)
      [32m+[0m[0m license_model                         = (known after apply)
      [32m+[0m[0m listener_endpoint                     = (known after apply)
      [32m+[0m[0m maintenance_window                    = (known after apply)
      [32m+[0m[0m master_user_secret                    = (known after apply)
      [32m+[0m[0m master_user_secret_kms_key_id         = (known after apply)
      [32m+[0m[0m monitoring_interval                   = 0
      [32m+[0m[0m monitoring_role_arn                   = (known after apply)
      [32m+[0m[0m multi_az                              = (known after apply)
      [32m+[0m[0m nchar_character_set_name              = (known after apply)
      [32m+[0m[0m network_type                          = (known after apply)
      [32m+[0m[0m option_group_name                     = (known after apply)
      [32m+[0m[0m parameter_group_name                  = (known after apply)
      [32m+[0m[0m password                              = (sensitive value)
      [32m+[0m[0m password_wo                           = (write-only attribute)
      [32m+[0m[0m performance_insights_enabled          = false
      [32m+[0m[0m performance_insights_kms_key_id       = (known after apply)
      [32m+[0m[0m performance_insights_retention_period = (known after apply)
      [32m+[0m[0m port                                  = (known after apply)
      [32m+[0m[0m publicly_accessible                   = false
      [32m+[0m[0m replica_mode                          = (known after apply)
      [32m+[0m[0m replicas                              = (known after apply)
      [32m+[0m[0m resource_id                           = (known after apply)
      [32m+[0m[0m skip_final_snapshot                   = true
      [32m+[0m[0m snapshot_identifier                   = (known after apply)
      [32m+[0m[0m status                                = (known after apply)
      [32m+[0m[0m storage_throughput                    = (known after apply)
      [32m+[0m[0m storage_type                          = (known after apply)
      [32m+[0m[0m tags_all                              = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m timezone                              = (known after apply)
      [32m+[0m[0m username                              = "admin"
      [32m+[0m[0m vpc_security_group_ids                = (known after apply)
    }

[1m  # module.rds.aws_db_instance.postgres[0m will be created
[0m  [32m+[0m[0m resource "aws_db_instance" "postgres" {
      [32m+[0m[0m address                               = (known after apply)
      [32m+[0m[0m allocated_storage                     = 20
      [32m+[0m[0m apply_immediately                     = false
      [32m+[0m[0m arn                                   = (known after apply)
      [32m+[0m[0m auto_minor_version_upgrade            = true
      [32m+[0m[0m availability_zone                     = (known after apply)
      [32m+[0m[0m backup_retention_period               = (known after apply)
      [32m+[0m[0m backup_target                         = (known after apply)
      [32m+[0m[0m backup_window                         = (known after apply)
      [32m+[0m[0m ca_cert_identifier                    = (known after apply)
      [32m+[0m[0m character_set_name                    = (known after apply)
      [32m+[0m[0m copy_tags_to_snapshot                 = false
      [32m+[0m[0m database_insights_mode                = (known after apply)
      [32m+[0m[0m db_name                               = "orders"
      [32m+[0m[0m db_subnet_group_name                  = "bedrock-db-subnet-group"
      [32m+[0m[0m dedicated_log_volume                  = false
      [32m+[0m[0m delete_automated_backups              = true
      [32m+[0m[0m domain_fqdn                           = (known after apply)
      [32m+[0m[0m endpoint                              = (known after apply)
      [32m+[0m[0m engine                                = "postgres"
      [32m+[0m[0m engine_lifecycle_support              = (known after apply)
      [32m+[0m[0m engine_version                        = "15"
      [32m+[0m[0m engine_version_actual                 = (known after apply)
      [32m+[0m[0m hosted_zone_id                        = (known after apply)
      [32m+[0m[0m id                                    = (known after apply)
      [32m+[0m[0m identifier                            = "bedrock-postgres"
      [32m+[0m[0m identifier_prefix                     = (known after apply)
      [32m+[0m[0m instance_class                        = "db.t3.micro"
      [32m+[0m[0m iops                                  = (known after apply)
      [32m+[0m[0m kms_key_id                            = (known after apply)
      [32m+[0m[0m latest_restorable_time                = (known after apply)
      [32m+[0m[0m license_model                         = (known after apply)
      [32m+[0m[0m listener_endpoint                     = (known after apply)
      [32m+[0m[0m maintenance_window                    = (known after apply)
      [32m+[0m[0m master_user_secret                    = (known after apply)
      [32m+[0m[0m master_user_secret_kms_key_id         = (known after apply)
      [32m+[0m[0m monitoring_interval                   = 0
      [32m+[0m[0m monitoring_role_arn                   = (known after apply)
      [32m+[0m[0m multi_az                              = (known after apply)
      [32m+[0m[0m nchar_character_set_name              = (known after apply)
      [32m+[0m[0m network_type                          = (known after apply)
      [32m+[0m[0m option_group_name                     = (known after apply)
      [32m+[0m[0m parameter_group_name                  = (known after apply)
      [32m+[0m[0m password                              = (sensitive value)
      [32m+[0m[0m password_wo                           = (write-only attribute)
      [32m+[0m[0m performance_insights_enabled          = false
      [32m+[0m[0m performance_insights_kms_key_id       = (known after apply)
      [32m+[0m[0m performance_insights_retention_period = (known after apply)
      [32m+[0m[0m port                                  = (known after apply)
      [32m+[0m[0m publicly_accessible                   = false
      [32m+[0m[0m replica_mode                          = (known after apply)
      [32m+[0m[0m replicas                              = (known after apply)
      [32m+[0m[0m resource_id                           = (known after apply)
      [32m+[0m[0m skip_final_snapshot                   = true
      [32m+[0m[0m snapshot_identifier                   = (known after apply)
      [32m+[0m[0m status                                = (known after apply)
      [32m+[0m[0m storage_throughput                    = (known after apply)
      [32m+[0m[0m storage_type                          = (known after apply)
      [32m+[0m[0m tags_all                              = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m timezone                              = (known after apply)
      [32m+[0m[0m username                              = "postgresadmin"
      [32m+[0m[0m vpc_security_group_ids                = (known after apply)
    }

[1m  # module.rds.aws_db_subnet_group.bedrock_db_subnet_group[0m will be created
[0m  [32m+[0m[0m resource "aws_db_subnet_group" "bedrock_db_subnet_group" {
      [32m+[0m[0m arn                     = (known after apply)
      [32m+[0m[0m description             = "Managed by Terraform"
      [32m+[0m[0m id                      = (known after apply)
      [32m+[0m[0m name                    = "bedrock-db-subnet-group"
      [32m+[0m[0m name_prefix             = (known after apply)
      [32m+[0m[0m subnet_ids              = (known after apply)
      [32m+[0m[0m supported_network_types = (known after apply)
      [32m+[0m[0m tags                    = {
          [32m+[0m[0m "Name" = "bedrock-db-subnet-group"
        }
      [32m+[0m[0m tags_all                = {
          [32m+[0m[0m "Name"    = "bedrock-db-subnet-group"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m vpc_id                  = (known after apply)
    }

[1m  # module.rds.aws_security_group.rds_sg[0m will be created
[0m  [32m+[0m[0m resource "aws_security_group" "rds_sg" {
      [32m+[0m[0m arn                    = (known after apply)
      [32m+[0m[0m description            = "RDS Security Group"
      [32m+[0m[0m egress                 = [
          [32m+[0m[0m {
              [32m+[0m[0m cidr_blocks      = [
                  [32m+[0m[0m "0.0.0.0/0",
                ]
              [32m+[0m[0m from_port        = 0
              [32m+[0m[0m ipv6_cidr_blocks = []
              [32m+[0m[0m prefix_list_ids  = []
              [32m+[0m[0m protocol         = "-1"
              [32m+[0m[0m security_groups  = []
              [32m+[0m[0m self             = false
              [32m+[0m[0m to_port          = 0
                [90m# (1 unchanged attribute hidden)[0m[0m
            },
        ]
      [32m+[0m[0m id                     = (known after apply)
      [32m+[0m[0m ingress                = [
          [32m+[0m[0m {
              [32m+[0m[0m cidr_blocks      = [
                  [32m+[0m[0m "10.0.0.0/16",
                ]
              [32m+[0m[0m from_port        = 3306
              [32m+[0m[0m ipv6_cidr_blocks = []
              [32m+[0m[0m prefix_list_ids  = []
              [32m+[0m[0m protocol         = "tcp"
              [32m+[0m[0m security_groups  = []
              [32m+[0m[0m self             = false
              [32m+[0m[0m to_port          = 3306
                [90m# (1 unchanged attribute hidden)[0m[0m
            },
          [32m+[0m[0m {
              [32m+[0m[0m cidr_blocks      = [
                  [32m+[0m[0m "10.0.0.0/16",
                ]
              [32m+[0m[0m from_port        = 5432
              [32m+[0m[0m ipv6_cidr_blocks = []
              [32m+[0m[0m prefix_list_ids  = []
              [32m+[0m[0m protocol         = "tcp"
              [32m+[0m[0m security_groups  = []
              [32m+[0m[0m self             = false
              [32m+[0m[0m to_port          = 5432
                [90m# (1 unchanged attribute hidden)[0m[0m
            },
        ]
      [32m+[0m[0m name                   = "bedrock-rds-sg"
      [32m+[0m[0m name_prefix            = (known after apply)
      [32m+[0m[0m owner_id               = (known after apply)
      [32m+[0m[0m revoke_rules_on_delete = false
      [32m+[0m[0m tags_all               = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m vpc_id                 = (known after apply)
    }

[1m  # module.s3.aws_s3_bucket.assets[0m will be created
[0m  [32m+[0m[0m resource "aws_s3_bucket" "assets" {
      [32m+[0m[0m acceleration_status         = (known after apply)
      [32m+[0m[0m acl                         = (known after apply)
      [32m+[0m[0m arn                         = (known after apply)
      [32m+[0m[0m bucket                      = "bedrock-assets-alt-soe-025-3757"
      [32m+[0m[0m bucket_domain_name          = (known after apply)
      [32m+[0m[0m bucket_prefix               = (known after apply)
      [32m+[0m[0m bucket_regional_domain_name = (known after apply)
      [32m+[0m[0m force_destroy               = false
      [32m+[0m[0m hosted_zone_id              = (known after apply)
      [32m+[0m[0m id                          = (known after apply)
      [32m+[0m[0m object_lock_enabled         = (known after apply)
      [32m+[0m[0m policy                      = (known after apply)
      [32m+[0m[0m region                      = (known after apply)
      [32m+[0m[0m request_payer               = (known after apply)
      [32m+[0m[0m tags                        = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all                    = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m website_domain              = (known after apply)
      [32m+[0m[0m website_endpoint            = (known after apply)

      [32m+[0m[0m cors_rule (known after apply)

      [32m+[0m[0m grant (known after apply)

      [32m+[0m[0m lifecycle_rule (known after apply)

      [32m+[0m[0m logging (known after apply)

      [32m+[0m[0m object_lock_configuration (known after apply)

      [32m+[0m[0m replication_configuration (known after apply)

      [32m+[0m[0m server_side_encryption_configuration (known after apply)

      [32m+[0m[0m versioning (known after apply)

      [32m+[0m[0m website (known after apply)
    }

[1m  # module.s3.aws_s3_bucket_public_access_block.assets[0m will be created
[0m  [32m+[0m[0m resource "aws_s3_bucket_public_access_block" "assets" {
      [32m+[0m[0m block_public_acls       = true
      [32m+[0m[0m block_public_policy     = true
      [32m+[0m[0m bucket                  = (known after apply)
      [32m+[0m[0m id                      = (known after apply)
      [32m+[0m[0m ignore_public_acls      = true
      [32m+[0m[0m restrict_public_buckets = true
    }

[1m  # module.secrets_manager.aws_secretsmanager_secret.mysql[0m will be created
[0m  [32m+[0m[0m resource "aws_secretsmanager_secret" "mysql" {
      [32m+[0m[0m arn                            = (known after apply)
      [32m+[0m[0m description                    = "MySQL database credentials"
      [32m+[0m[0m force_overwrite_replica_secret = false
      [32m+[0m[0m id                             = (known after apply)
      [32m+[0m[0m kms_key_id                     = (known after apply)
      [32m+[0m[0m name                           = "project-fortress/dev/mysql"
      [32m+[0m[0m name_prefix                    = (known after apply)
      [32m+[0m[0m policy                         = (known after apply)
      [32m+[0m[0m recovery_window_in_days        = 30
      [32m+[0m[0m tags                           = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-mysql-secret"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tags_all                       = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-mysql-secret"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }

      [32m+[0m[0m replica (known after apply)
    }

[1m  # module.secrets_manager.aws_secretsmanager_secret.postgres[0m will be created
[0m  [32m+[0m[0m resource "aws_secretsmanager_secret" "postgres" {
      [32m+[0m[0m arn                            = (known after apply)
      [32m+[0m[0m description                    = "PostgreSQL database credentials"
      [32m+[0m[0m force_overwrite_replica_secret = false
      [32m+[0m[0m id                             = (known after apply)
      [32m+[0m[0m kms_key_id                     = (known after apply)
      [32m+[0m[0m name                           = "project-fortress/dev/postgres"
      [32m+[0m[0m name_prefix                    = (known after apply)
      [32m+[0m[0m policy                         = (known after apply)
      [32m+[0m[0m recovery_window_in_days        = 30
      [32m+[0m[0m tags                           = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-postgres-secret"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tags_all                       = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-postgres-secret"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }

      [32m+[0m[0m replica (known after apply)
    }

[1m  # module.secrets_manager.aws_secretsmanager_secret_version.mysql[0m will be created
[0m  [32m+[0m[0m resource "aws_secretsmanager_secret_version" "mysql" {
      [32m+[0m[0m arn                  = (known after apply)
      [32m+[0m[0m has_secret_string_wo = (known after apply)
      [32m+[0m[0m id                   = (known after apply)
      [32m+[0m[0m secret_id            = (known after apply)
      [32m+[0m[0m secret_string        = (sensitive value)
      [32m+[0m[0m secret_string_wo     = (write-only attribute)
      [32m+[0m[0m version_id           = (known after apply)
      [32m+[0m[0m version_stages       = (known after apply)
    }

[1m  # module.secrets_manager.aws_secretsmanager_secret_version.postgres[0m will be created
[0m  [32m+[0m[0m resource "aws_secretsmanager_secret_version" "postgres" {
      [32m+[0m[0m arn                  = (known after apply)
      [32m+[0m[0m has_secret_string_wo = (known after apply)
      [32m+[0m[0m id                   = (known after apply)
      [32m+[0m[0m secret_id            = (known after apply)
      [32m+[0m[0m secret_string        = (sensitive value)
      [32m+[0m[0m secret_string_wo     = (write-only attribute)
      [32m+[0m[0m version_id           = (known after apply)
      [32m+[0m[0m version_stages       = (known after apply)
    }

[1m  # module.secrets_manager.random_password.mysql[0m will be created
[0m  [32m+[0m[0m resource "random_password" "mysql" {
      [32m+[0m[0m bcrypt_hash      = (sensitive value)
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m length           = 24
      [32m+[0m[0m lower            = true
      [32m+[0m[0m min_lower        = 0
      [32m+[0m[0m min_numeric      = 0
      [32m+[0m[0m min_special      = 0
      [32m+[0m[0m min_upper        = 0
      [32m+[0m[0m number           = true
      [32m+[0m[0m numeric          = true
      [32m+[0m[0m override_special = "!#$%^&*()-_=+[]{}:?"
      [32m+[0m[0m result           = (sensitive value)
      [32m+[0m[0m special          = true
      [32m+[0m[0m upper            = true
    }

[1m  # module.secrets_manager.random_password.postgres[0m will be created
[0m  [32m+[0m[0m resource "random_password" "postgres" {
      [32m+[0m[0m bcrypt_hash      = (sensitive value)
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m length           = 24
      [32m+[0m[0m lower            = true
      [32m+[0m[0m min_lower        = 0
      [32m+[0m[0m min_numeric      = 0
      [32m+[0m[0m min_special      = 0
      [32m+[0m[0m min_upper        = 0
      [32m+[0m[0m number           = true
      [32m+[0m[0m numeric          = true
      [32m+[0m[0m override_special = "!#$%^&*()-_=+[]{}<>?"
      [32m+[0m[0m result           = (sensitive value)
      [32m+[0m[0m special          = true
      [32m+[0m[0m upper            = true
    }

[1m  # module.ssm.aws_ssm_parameter.parameters["assets_bucket_name"][0m will be created
[0m  [32m+[0m[0m resource "aws_ssm_parameter" "parameters" {
      [32m+[0m[0m arn            = (known after apply)
      [32m+[0m[0m data_type      = (known after apply)
      [32m+[0m[0m has_value_wo   = (known after apply)
      [32m+[0m[0m id             = (known after apply)
      [32m+[0m[0m insecure_value = (known after apply)
      [32m+[0m[0m key_id         = (known after apply)
      [32m+[0m[0m name           = "/project-fortress/dev/assets_bucket_name"
      [32m+[0m[0m tags           = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-assets_bucket_name"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tags_all       = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-assets_bucket_name"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tier           = (known after apply)
      [32m+[0m[0m type           = "String"
      [32m+[0m[0m value          = (sensitive value)
      [32m+[0m[0m value_wo       = (write-only attribute)
      [32m+[0m[0m version        = (known after apply)
    }

[1m  # module.ssm.aws_ssm_parameter.parameters["aws_region"][0m will be created
[0m  [32m+[0m[0m resource "aws_ssm_parameter" "parameters" {
      [32m+[0m[0m arn            = (known after apply)
      [32m+[0m[0m data_type      = (known after apply)
      [32m+[0m[0m has_value_wo   = (known after apply)
      [32m+[0m[0m id             = (known after apply)
      [32m+[0m[0m insecure_value = (known after apply)
      [32m+[0m[0m key_id         = (known after apply)
      [32m+[0m[0m name           = "/project-fortress/dev/aws_region"
      [32m+[0m[0m tags           = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-aws_region"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tags_all       = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-aws_region"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tier           = (known after apply)
      [32m+[0m[0m type           = "String"
      [32m+[0m[0m value          = (sensitive value)
      [32m+[0m[0m value_wo       = (write-only attribute)
      [32m+[0m[0m version        = (known after apply)
    }

[1m  # module.ssm.aws_ssm_parameter.parameters["cluster_name"][0m will be created
[0m  [32m+[0m[0m resource "aws_ssm_parameter" "parameters" {
      [32m+[0m[0m arn            = (known after apply)
      [32m+[0m[0m data_type      = (known after apply)
      [32m+[0m[0m has_value_wo   = (known after apply)
      [32m+[0m[0m id             = (known after apply)
      [32m+[0m[0m insecure_value = (known after apply)
      [32m+[0m[0m key_id         = (known after apply)
      [32m+[0m[0m name           = "/project-fortress/dev/cluster_name"
      [32m+[0m[0m tags           = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-cluster_name"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tags_all       = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-cluster_name"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tier           = (known after apply)
      [32m+[0m[0m type           = "String"
      [32m+[0m[0m value          = (sensitive value)
      [32m+[0m[0m value_wo       = (write-only attribute)
      [32m+[0m[0m version        = (known after apply)
    }

[1m  # module.ssm.aws_ssm_parameter.parameters["environment"][0m will be created
[0m  [32m+[0m[0m resource "aws_ssm_parameter" "parameters" {
      [32m+[0m[0m arn            = (known after apply)
      [32m+[0m[0m data_type      = (known after apply)
      [32m+[0m[0m has_value_wo   = (known after apply)
      [32m+[0m[0m id             = (known after apply)
      [32m+[0m[0m insecure_value = (known after apply)
      [32m+[0m[0m key_id         = (known after apply)
      [32m+[0m[0m name           = "/project-fortress/dev/environment"
      [32m+[0m[0m tags           = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-environment"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tags_all       = {
          [32m+[0m[0m "Environment" = "dev"
          [32m+[0m[0m "ManagedBy"   = "Terraform"
          [32m+[0m[0m "Name"        = "project-fortress-dev-environment"
          [32m+[0m[0m "Owner"       = "Silias Odion"
          [32m+[0m[0m "Platform"    = "AWS"
          [32m+[0m[0m "Project"     = "project-fortress"
          [32m+[0m[0m "Repository"  = "project-fortress"
        }
      [32m+[0m[0m tier           = (known after apply)
      [32m+[0m[0m type           = "String"
      [32m+[0m[0m value          = (sensitive value)
      [32m+[0m[0m value_wo       = (write-only attribute)
      [32m+[0m[0m version        = (known after apply)
    }

[1m  # module.eks.module.eks.data.tls_certificate.this[0][0m will be read during apply
  # (config refers to values not yet known)
[0m [36m<=[0m[0m data "tls_certificate" "this" {
      [32m+[0m[0m certificates = (known after apply)
      [32m+[0m[0m id           = (known after apply)
      [32m+[0m[0m url          = (known after apply)
    }

[1m  # module.eks.module.eks.aws_cloudwatch_log_group.this[0][0m will be created
[0m  [32m+[0m[0m resource "aws_cloudwatch_log_group" "this" {
      [32m+[0m[0m arn               = (known after apply)
      [32m+[0m[0m id                = (known after apply)
      [32m+[0m[0m log_group_class   = (known after apply)
      [32m+[0m[0m name              = "/aws/eks/project-bedrock-cluster/cluster"
      [32m+[0m[0m name_prefix       = (known after apply)
      [32m+[0m[0m retention_in_days = 90
      [32m+[0m[0m skip_destroy      = false
      [32m+[0m[0m tags              = {
          [32m+[0m[0m "Name"    = "/aws/eks/project-bedrock-cluster/cluster"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all          = {
          [32m+[0m[0m "Name"    = "/aws/eks/project-bedrock-cluster/cluster"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
    }

[1m  # module.eks.module.eks.aws_ec2_tag.cluster_primary_security_group["Project"][0m will be created
[0m  [32m+[0m[0m resource "aws_ec2_tag" "cluster_primary_security_group" {
      [32m+[0m[0m id          = (known after apply)
      [32m+[0m[0m key         = "Project"
      [32m+[0m[0m resource_id = (known after apply)
      [32m+[0m[0m value       = "karatu-2025-capstone"
    }

[1m  # module.eks.module.eks.aws_eks_access_entry.this["cluster_creator"][0m will be created
[0m  [32m+[0m[0m resource "aws_eks_access_entry" "this" {
      [32m+[0m[0m access_entry_arn  = (known after apply)
      [32m+[0m[0m cluster_name      = (known after apply)
      [32m+[0m[0m created_at        = (known after apply)
      [32m+[0m[0m id                = (known after apply)
      [32m+[0m[0m kubernetes_groups = (known after apply)
      [32m+[0m[0m modified_at       = (known after apply)
      [32m+[0m[0m principal_arn     = "arn:aws:iam::561876735341:user/Cloud-admin"
      [32m+[0m[0m tags              = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all          = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m type              = "STANDARD"
      [32m+[0m[0m user_name         = (known after apply)
    }

[1m  # module.eks.module.eks.aws_eks_access_policy_association.this["cluster_creator_admin"][0m will be created
[0m  [32m+[0m[0m resource "aws_eks_access_policy_association" "this" {
      [32m+[0m[0m associated_at = (known after apply)
      [32m+[0m[0m cluster_name  = (known after apply)
      [32m+[0m[0m id            = (known after apply)
      [32m+[0m[0m modified_at   = (known after apply)
      [32m+[0m[0m policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
      [32m+[0m[0m principal_arn = "arn:aws:iam::561876735341:user/Cloud-admin"

      [32m+[0m[0m access_scope {
          [32m+[0m[0m type = "cluster"
        }
    }

[1m  # module.eks.module.eks.aws_eks_cluster.this[0][0m will be created
[0m  [32m+[0m[0m resource "aws_eks_cluster" "this" {
      [32m+[0m[0m arn                           = (known after apply)
      [32m+[0m[0m bootstrap_self_managed_addons = true
      [32m+[0m[0m certificate_authority         = (known after apply)
      [32m+[0m[0m cluster_id                    = (known after apply)
      [32m+[0m[0m created_at                    = (known after apply)
      [32m+[0m[0m enabled_cluster_log_types     = [
          [32m+[0m[0m "api",
          [32m+[0m[0m "audit",
          [32m+[0m[0m "authenticator",
          [32m+[0m[0m "controllerManager",
          [32m+[0m[0m "scheduler",
        ]
      [32m+[0m[0m endpoint                      = (known after apply)
      [32m+[0m[0m id                            = (known after apply)
      [32m+[0m[0m identity                      = (known after apply)
      [32m+[0m[0m name                          = "project-bedrock-cluster"
      [32m+[0m[0m platform_version              = (known after apply)
      [32m+[0m[0m role_arn                      = (known after apply)
      [32m+[0m[0m status                        = (known after apply)
      [32m+[0m[0m tags                          = {
          [32m+[0m[0m "Project"               = "karatu-2025-capstone"
          [32m+[0m[0m "terraform-aws-modules" = "eks"
        }
      [32m+[0m[0m tags_all                      = {
          [32m+[0m[0m "Project"               = "karatu-2025-capstone"
          [32m+[0m[0m "terraform-aws-modules" = "eks"
        }
      [32m+[0m[0m version                       = "1.34"

      [32m+[0m[0m access_config {
          [32m+[0m[0m authentication_mode                         = "API_AND_CONFIG_MAP"
          [32m+[0m[0m bootstrap_cluster_creator_admin_permissions = false
        }

      [32m+[0m[0m encryption_config {
          [32m+[0m[0m resources = [
              [32m+[0m[0m "secrets",
            ]

          [32m+[0m[0m provider {
              [32m+[0m[0m key_arn = (known after apply)
            }
        }

      [32m+[0m[0m kubernetes_network_config {
          [32m+[0m[0m ip_family         = "ipv4"
          [32m+[0m[0m service_ipv4_cidr = (known after apply)
          [32m+[0m[0m service_ipv6_cidr = (known after apply)

          [32m+[0m[0m elastic_load_balancing (known after apply)
        }

      [32m+[0m[0m timeouts {}

      [32m+[0m[0m upgrade_policy (known after apply)

      [32m+[0m[0m vpc_config {
          [32m+[0m[0m cluster_security_group_id = (known after apply)
          [32m+[0m[0m endpoint_private_access   = true
          [32m+[0m[0m endpoint_public_access    = true
          [32m+[0m[0m public_access_cidrs       = [
              [32m+[0m[0m "0.0.0.0/0",
            ]
          [32m+[0m[0m security_group_ids        = (known after apply)
          [32m+[0m[0m subnet_ids                = (known after apply)
          [32m+[0m[0m vpc_id                    = (known after apply)
        }
    }

[1m  # module.eks.module.eks.aws_iam_openid_connect_provider.oidc_provider[0][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_openid_connect_provider" "oidc_provider" {
      [32m+[0m[0m arn             = (known after apply)
      [32m+[0m[0m client_id_list  = [
          [32m+[0m[0m "sts.amazonaws.com",
        ]
      [32m+[0m[0m id              = (known after apply)
      [32m+[0m[0m tags            = {
          [32m+[0m[0m "Name"    = "project-bedrock-cluster-eks-irsa"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all        = {
          [32m+[0m[0m "Name"    = "project-bedrock-cluster-eks-irsa"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m thumbprint_list = (known after apply)
      [32m+[0m[0m url             = (known after apply)
    }

[1m  # module.eks.module.eks.aws_iam_policy.cluster_encryption[0][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_policy" "cluster_encryption" {
      [32m+[0m[0m arn              = (known after apply)
      [32m+[0m[0m attachment_count = (known after apply)
      [32m+[0m[0m description      = "Cluster encryption policy to allow cluster role to utilize CMK provided"
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m name             = (known after apply)
      [32m+[0m[0m name_prefix      = "project-bedrock-cluster-cluster-ClusterEncryption"
      [32m+[0m[0m path             = "/"
      [32m+[0m[0m policy           = (known after apply)
      [32m+[0m[0m policy_id        = (known after apply)
      [32m+[0m[0m tags             = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all         = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
    }

[1m  # module.eks.module.eks.aws_iam_policy.custom[0][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_policy" "custom" {
      [32m+[0m[0m arn              = (known after apply)
      [32m+[0m[0m attachment_count = (known after apply)
      [32m+[0m[0m id               = (known after apply)
      [32m+[0m[0m name             = (known after apply)
      [32m+[0m[0m name_prefix      = "project-bedrock-cluster-cluster-"
      [32m+[0m[0m path             = "/"
      [32m+[0m[0m policy           = jsonencode(
            {
              [32m+[0m[0m Statement = [
                  [32m+[0m[0m {
                      [32m+[0m[0m Action    = [
                          [32m+[0m[0m "ec2:RunInstances",
                          [32m+[0m[0m "ec2:CreateLaunchTemplate",
                          [32m+[0m[0m "ec2:CreateFleet",
                        ]
                      [32m+[0m[0m Condition = {
                          [32m+[0m[0m StringEquals = {
                              [32m+[0m[0m "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                          [32m+[0m[0m StringLike   = {
                              [32m+[0m[0m "aws:RequestTag/eks:kubernetes-node-class-name" = "*"
                              [32m+[0m[0m "aws:RequestTag/eks:kubernetes-node-pool-name"  = "*"
                            }
                        }
                      [32m+[0m[0m Effect    = "Allow"
                      [32m+[0m[0m Resource  = "*"
                      [32m+[0m[0m Sid       = "Compute"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action    = [
                          [32m+[0m[0m "ec2:CreateVolume",
                          [32m+[0m[0m "ec2:CreateSnapshot",
                        ]
                      [32m+[0m[0m Condition = {
                          [32m+[0m[0m StringEquals = {
                              [32m+[0m[0m "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      [32m+[0m[0m Effect    = "Allow"
                      [32m+[0m[0m Resource  = [
                          [32m+[0m[0m "arn:aws:ec2:*:*:volume/*",
                          [32m+[0m[0m "arn:aws:ec2:*:*:snapshot/*",
                        ]
                      [32m+[0m[0m Sid       = "Storage"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action    = "ec2:CreateNetworkInterface"
                      [32m+[0m[0m Condition = {
                          [32m+[0m[0m StringEquals = {
                              [32m+[0m[0m "aws:RequestTag/eks:eks-cluster-name"         = "${aws:PrincipalTag/eks:eks-cluster-name}"
                              [32m+[0m[0m "aws:RequestTag/eks:kubernetes-cni-node-name" = "*"
                            }
                        }
                      [32m+[0m[0m Effect    = "Allow"
                      [32m+[0m[0m Resource  = "*"
                      [32m+[0m[0m Sid       = "Networking"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action    = [
                          [32m+[0m[0m "elasticloadbalancing:CreateTargetGroup",
                          [32m+[0m[0m "elasticloadbalancing:CreateRule",
                          [32m+[0m[0m "elasticloadbalancing:CreateLoadBalancer",
                          [32m+[0m[0m "elasticloadbalancing:CreateListener",
                          [32m+[0m[0m "ec2:CreateSecurityGroup",
                        ]
                      [32m+[0m[0m Condition = {
                          [32m+[0m[0m StringEquals = {
                              [32m+[0m[0m "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      [32m+[0m[0m Effect    = "Allow"
                      [32m+[0m[0m Resource  = "*"
                      [32m+[0m[0m Sid       = "LoadBalancer"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action    = "shield:CreateProtection"
                      [32m+[0m[0m Condition = {
                          [32m+[0m[0m StringEquals = {
                              [32m+[0m[0m "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      [32m+[0m[0m Effect    = "Allow"
                      [32m+[0m[0m Resource  = "*"
                      [32m+[0m[0m Sid       = "ShieldProtection"
                    },
                  [32m+[0m[0m {
                      [32m+[0m[0m Action    = "shield:TagResource"
                      [32m+[0m[0m Condition = {
                          [32m+[0m[0m StringEquals = {
                              [32m+[0m[0m "aws:RequestTag/eks:eks-cluster-name" = "${aws:PrincipalTag/eks:eks-cluster-name}"
                            }
                        }
                      [32m+[0m[0m Effect    = "Allow"
                      [32m+[0m[0m Resource  = "arn:aws:shield::*:protection/*"
                      [32m+[0m[0m Sid       = "ShieldTagResource"
                    },
                ]
              [32m+[0m[0m Version   = "2012-10-17"
            }
        )
      [32m+[0m[0m policy_id        = (known after apply)
      [32m+[0m[0m tags             = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all         = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
    }

[1m  # module.eks.module.eks.aws_iam_role.this[0][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role" "this" {
      [32m+[0m[0m arn                   = (known after apply)
      [32m+[0m[0m assume_role_policy    = jsonencode(
            {
              [32m+[0m[0m Statement = [
                  [32m+[0m[0m {
                      [32m+[0m[0m Action    = [
                          [32m+[0m[0m "sts:TagSession",
                          [32m+[0m[0m "sts:AssumeRole",
                        ]
                      [32m+[0m[0m Effect    = "Allow"
                      [32m+[0m[0m Principal = {
                          [32m+[0m[0m Service = "eks.amazonaws.com"
                        }
                      [32m+[0m[0m Sid       = "EKSClusterAssumeRole"
                    },
                ]
              [32m+[0m[0m Version   = "2012-10-17"
            }
        )
      [32m+[0m[0m create_date           = (known after apply)
      [32m+[0m[0m force_detach_policies = true
      [32m+[0m[0m id                    = (known after apply)
      [32m+[0m[0m managed_policy_arns   = (known after apply)
      [32m+[0m[0m max_session_duration  = 3600
      [32m+[0m[0m name                  = (known after apply)
      [32m+[0m[0m name_prefix           = "project-bedrock-cluster-cluster-"
      [32m+[0m[0m path                  = "/"
      [32m+[0m[0m tags                  = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all              = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m unique_id             = (known after apply)

      [32m+[0m[0m inline_policy (known after apply)
    }

[1m  # module.eks.module.eks.aws_iam_role_policy_attachment.cluster_encryption[0][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "cluster_encryption" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = (known after apply)
      [32m+[0m[0m role       = (known after apply)
    }

[1m  # module.eks.module.eks.aws_iam_role_policy_attachment.custom[0][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "custom" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = (known after apply)
      [32m+[0m[0m role       = (known after apply)
    }

[1m  # module.eks.module.eks.aws_iam_role_policy_attachment.this["AmazonEKSClusterPolicy"][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "this" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
      [32m+[0m[0m role       = (known after apply)
    }

[1m  # module.eks.module.eks.aws_iam_role_policy_attachment.this["AmazonEKSVPCResourceController"][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "this" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
      [32m+[0m[0m role       = (known after apply)
    }

[1m  # module.eks.module.eks.aws_security_group.cluster[0][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group" "cluster" {
      [32m+[0m[0m arn                    = (known after apply)
      [32m+[0m[0m description            = "EKS cluster security group"
      [32m+[0m[0m egress                 = (known after apply)
      [32m+[0m[0m id                     = (known after apply)
      [32m+[0m[0m ingress                = (known after apply)
      [32m+[0m[0m name                   = (known after apply)
      [32m+[0m[0m name_prefix            = "project-bedrock-cluster-cluster-"
      [32m+[0m[0m owner_id               = (known after apply)
      [32m+[0m[0m revoke_rules_on_delete = false
      [32m+[0m[0m tags                   = {
          [32m+[0m[0m "Name"    = "project-bedrock-cluster-cluster"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all               = {
          [32m+[0m[0m "Name"    = "project-bedrock-cluster-cluster"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m vpc_id                 = (known after apply)
    }

[1m  # module.eks.module.eks.aws_security_group.node[0][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group" "node" {
      [32m+[0m[0m arn                    = (known after apply)
      [32m+[0m[0m description            = "EKS node shared security group"
      [32m+[0m[0m egress                 = (known after apply)
      [32m+[0m[0m id                     = (known after apply)
      [32m+[0m[0m ingress                = (known after apply)
      [32m+[0m[0m name                   = (known after apply)
      [32m+[0m[0m name_prefix            = "project-bedrock-cluster-node-"
      [32m+[0m[0m owner_id               = (known after apply)
      [32m+[0m[0m revoke_rules_on_delete = false
      [32m+[0m[0m tags                   = {
          [32m+[0m[0m "Name"                                          = "project-bedrock-cluster-node"
          [32m+[0m[0m "Project"                                       = "karatu-2025-capstone"
          [32m+[0m[0m "kubernetes.io/cluster/project-bedrock-cluster" = "owned"
        }
      [32m+[0m[0m tags_all               = {
          [32m+[0m[0m "Name"                                          = "project-bedrock-cluster-node"
          [32m+[0m[0m "Project"                                       = "karatu-2025-capstone"
          [32m+[0m[0m "kubernetes.io/cluster/project-bedrock-cluster" = "owned"
        }
      [32m+[0m[0m vpc_id                 = (known after apply)
    }

[1m  # module.eks.module.eks.aws_security_group_rule.cluster["ingress_nodes_443"][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group_rule" "cluster" {
      [32m+[0m[0m description              = "Node groups to cluster API"
      [32m+[0m[0m from_port                = 443
      [32m+[0m[0m id                       = (known after apply)
      [32m+[0m[0m protocol                 = "tcp"
      [32m+[0m[0m security_group_id        = (known after apply)
      [32m+[0m[0m security_group_rule_id   = (known after apply)
      [32m+[0m[0m self                     = false
      [32m+[0m[0m source_security_group_id = (known after apply)
      [32m+[0m[0m to_port                  = 443
      [32m+[0m[0m type                     = "ingress"
    }

[1m  # module.eks.module.eks.aws_security_group_rule.node["egress_all"][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group_rule" "node" {
      [32m+[0m[0m cidr_blocks              = [
          [32m+[0m[0m "0.0.0.0/0",
        ]
      [32m+[0m[0m description              = "Allow all egress"
      [32m+[0m[0m from_port                = 0
      [32m+[0m[0m id                       = (known after apply)
      [32m+[0m[0m prefix_list_ids          = []
      [32m+[0m[0m protocol                 = "-1"
      [32m+[0m[0m security_group_id        = (known after apply)
      [32m+[0m[0m security_group_rule_id   = (known after apply)
      [32m+[0m[0m self                     = false
      [32m+[0m[0m source_security_group_id = (known after apply)
      [32m+[0m[0m to_port                  = 0
      [32m+[0m[0m type                     = "egress"
    }

[1m  # module.eks.module.eks.aws_security_group_rule.node["ingress_cluster_443"][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group_rule" "node" {
      [32m+[0m[0m description              = "Cluster API to node groups"
      [32m+[0m[0m from_port                = 443
      [32m+[0m[0m id                       = (known after apply)
      [32m+[0m[0m prefix_list_ids          = []
      [32m+[0m[0m protocol                 = "tcp"
      [32m+[0m[0m security_group_id        = (known after apply)
      [32m+[0m[0m security_group_rule_id   = (known after apply)
      [32m+[0m[0m self                     = false
      [32m+[0m[0m source_security_group_id = (known after apply)
      [32m+[0m[0m to_port                  = 443
      [32m+[0m[0m type                     = "ingress"
    }

[1m  # module.eks.module.eks.aws_security_group_rule.node["ingress_cluster_4443_webhook"][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group_rule" "node" {
      [32m+[0m[0m description              = "Cluster API to node 4443/tcp webhook"
      [32m+[0m[0m from_port                = 4443
      [32m+[0m[0m id                       = (known after apply)
      [32m+[0m[0m prefix_list_ids          = []
      [32m+[0m[0m protocol                 = "tcp"
      [32m+[0m[0m security_group_id        = (known after apply)
      [32m+[0m[0m security_group_rule_id   = (known after apply)
      [32m+[0m[0m self                     = false
      [32m+[0m[0m source_security_group_id = (known after apply)
      [32m+[0m[0m to_port                  = 4443
      [32m+[0m[0m type                     = "ingress"
    }

[1m  # module.eks.module.eks.aws_security_group_rule.node["ingress_cluster_6443_webhook"][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group_rule" "node" {
      [32m+[0m[0m description              = "Cluster API to node 6443/tcp webhook"
      [32m+[0m[0m from_port                = 6443
      [32m+[0m[0m id                       = (known after apply)
      [32m+[0m[0m prefix_list_ids          = []
      [32m+[0m[0m protocol                 = "tcp"
      [32m+[0m[0m security_group_id        = (known after apply)
      [32m+[0m[0m security_group_rule_id   = (known after apply)
      [32m+[0m[0m self                     = false
      [32m+[0m[0m source_security_group_id = (known after apply)
      [32m+[0m[0m to_port                  = 6443
      [32m+[0m[0m type                     = "ingress"
    }

[1m  # module.eks.module.eks.aws_security_group_rule.node["ingress_cluster_8443_webhook"][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group_rule" "node" {
      [32m+[0m[0m description              = "Cluster API to node 8443/tcp webhook"
      [32m+[0m[0m from_port                = 8443
      [32m+[0m[0m id                       = (known after apply)
      [32m+[0m[0m prefix_list_ids          = []
      [32m+[0m[0m protocol                 = "tcp"
      [32m+[0m[0m security_group_id        = (known after apply)
      [32m+[0m[0m security_group_rule_id   = (known after apply)
      [32m+[0m[0m self                     = false
      [32m+[0m[0m source_security_group_id = (known after apply)
      [32m+[0m[0m to_port                  = 8443
      [32m+[0m[0m type                     = "ingress"
    }

[1m  # module.eks.module.eks.aws_security_group_rule.node["ingress_cluster_9443_webhook"][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group_rule" "node" {
      [32m+[0m[0m description              = "Cluster API to node 9443/tcp webhook"
      [32m+[0m[0m from_port                = 9443
      [32m+[0m[0m id                       = (known after apply)
      [32m+[0m[0m prefix_list_ids          = []
      [32m+[0m[0m protocol                 = "tcp"
      [32m+[0m[0m security_group_id        = (known after apply)
      [32m+[0m[0m security_group_rule_id   = (known after apply)
      [32m+[0m[0m self                     = false
      [32m+[0m[0m source_security_group_id = (known after apply)
      [32m+[0m[0m to_port                  = 9443
      [32m+[0m[0m type                     = "ingress"
    }

[1m  # module.eks.module.eks.aws_security_group_rule.node["ingress_cluster_kubelet"][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group_rule" "node" {
      [32m+[0m[0m description              = "Cluster API to node kubelets"
      [32m+[0m[0m from_port                = 10250
      [32m+[0m[0m id                       = (known after apply)
      [32m+[0m[0m prefix_list_ids          = []
      [32m+[0m[0m protocol                 = "tcp"
      [32m+[0m[0m security_group_id        = (known after apply)
      [32m+[0m[0m security_group_rule_id   = (known after apply)
      [32m+[0m[0m self                     = false
      [32m+[0m[0m source_security_group_id = (known after apply)
      [32m+[0m[0m to_port                  = 10250
      [32m+[0m[0m type                     = "ingress"
    }

[1m  # module.eks.module.eks.aws_security_group_rule.node["ingress_nodes_ephemeral"][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group_rule" "node" {
      [32m+[0m[0m description              = "Node to node ingress on ephemeral ports"
      [32m+[0m[0m from_port                = 1025
      [32m+[0m[0m id                       = (known after apply)
      [32m+[0m[0m prefix_list_ids          = []
      [32m+[0m[0m protocol                 = "tcp"
      [32m+[0m[0m security_group_id        = (known after apply)
      [32m+[0m[0m security_group_rule_id   = (known after apply)
      [32m+[0m[0m self                     = true
      [32m+[0m[0m source_security_group_id = (known after apply)
      [32m+[0m[0m to_port                  = 65535
      [32m+[0m[0m type                     = "ingress"
    }

[1m  # module.eks.module.eks.aws_security_group_rule.node["ingress_self_coredns_tcp"][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group_rule" "node" {
      [32m+[0m[0m description              = "Node to node CoreDNS"
      [32m+[0m[0m from_port                = 53
      [32m+[0m[0m id                       = (known after apply)
      [32m+[0m[0m prefix_list_ids          = []
      [32m+[0m[0m protocol                 = "tcp"
      [32m+[0m[0m security_group_id        = (known after apply)
      [32m+[0m[0m security_group_rule_id   = (known after apply)
      [32m+[0m[0m self                     = true
      [32m+[0m[0m source_security_group_id = (known after apply)
      [32m+[0m[0m to_port                  = 53
      [32m+[0m[0m type                     = "ingress"
    }

[1m  # module.eks.module.eks.aws_security_group_rule.node["ingress_self_coredns_udp"][0m will be created
[0m  [32m+[0m[0m resource "aws_security_group_rule" "node" {
      [32m+[0m[0m description              = "Node to node CoreDNS UDP"
      [32m+[0m[0m from_port                = 53
      [32m+[0m[0m id                       = (known after apply)
      [32m+[0m[0m prefix_list_ids          = []
      [32m+[0m[0m protocol                 = "udp"
      [32m+[0m[0m security_group_id        = (known after apply)
      [32m+[0m[0m security_group_rule_id   = (known after apply)
      [32m+[0m[0m self                     = true
      [32m+[0m[0m source_security_group_id = (known after apply)
      [32m+[0m[0m to_port                  = 53
      [32m+[0m[0m type                     = "ingress"
    }

[1m  # module.eks.module.eks.time_sleep.this[0][0m will be created
[0m  [32m+[0m[0m resource "time_sleep" "this" {
      [32m+[0m[0m create_duration = "30s"
      [32m+[0m[0m id              = (known after apply)
      [32m+[0m[0m triggers        = {
          [32m+[0m[0m "cluster_certificate_authority_data" = (known after apply)
          [32m+[0m[0m "cluster_endpoint"                   = (known after apply)
          [32m+[0m[0m "cluster_name"                       = (known after apply)
          [32m+[0m[0m "cluster_service_cidr"               = (known after apply)
          [32m+[0m[0m "cluster_version"                    = "1.34"
        }
    }

[1m  # module.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].aws_eks_node_group.this[0][0m will be created
[0m  [32m+[0m[0m resource "aws_eks_node_group" "this" {
      [32m+[0m[0m ami_type               = (known after apply)
      [32m+[0m[0m arn                    = (known after apply)
      [32m+[0m[0m capacity_type          = (known after apply)
      [32m+[0m[0m cluster_name           = (known after apply)
      [32m+[0m[0m disk_size              = (known after apply)
      [32m+[0m[0m id                     = (known after apply)
      [32m+[0m[0m instance_types         = [
          [32m+[0m[0m "t3.small",
        ]
      [32m+[0m[0m node_group_name        = (known after apply)
      [32m+[0m[0m node_group_name_prefix = "bedrock_nodes-"
      [32m+[0m[0m node_role_arn          = (known after apply)
      [32m+[0m[0m release_version        = (known after apply)
      [32m+[0m[0m resources              = (known after apply)
      [32m+[0m[0m status                 = (known after apply)
      [32m+[0m[0m subnet_ids             = (known after apply)
      [32m+[0m[0m tags                   = {
          [32m+[0m[0m "Name"    = "bedrock_nodes"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all               = {
          [32m+[0m[0m "Name"    = "bedrock_nodes"
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m version                = "1.34"

      [32m+[0m[0m launch_template {
          [32m+[0m[0m id      = (known after apply)
          [32m+[0m[0m name    = (known after apply)
          [32m+[0m[0m version = (known after apply)
        }

      [32m+[0m[0m node_repair_config (known after apply)

      [32m+[0m[0m scaling_config {
          [32m+[0m[0m desired_size = 3
          [32m+[0m[0m max_size     = 3
          [32m+[0m[0m min_size     = 2
        }

      [32m+[0m[0m timeouts {}

      [32m+[0m[0m update_config {
          [32m+[0m[0m max_unavailable_percentage = 33
        }
    }

[1m  # module.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].aws_iam_role.this[0][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role" "this" {
      [32m+[0m[0m arn                   = (known after apply)
      [32m+[0m[0m assume_role_policy    = jsonencode(
            {
              [32m+[0m[0m Statement = [
                  [32m+[0m[0m {
                      [32m+[0m[0m Action    = "sts:AssumeRole"
                      [32m+[0m[0m Effect    = "Allow"
                      [32m+[0m[0m Principal = {
                          [32m+[0m[0m Service = "ec2.amazonaws.com"
                        }
                      [32m+[0m[0m Sid       = "EKSNodeAssumeRole"
                    },
                ]
              [32m+[0m[0m Version   = "2012-10-17"
            }
        )
      [32m+[0m[0m create_date           = (known after apply)
      [32m+[0m[0m description           = "EKS managed node group IAM role"
      [32m+[0m[0m force_detach_policies = true
      [32m+[0m[0m id                    = (known after apply)
      [32m+[0m[0m managed_policy_arns   = (known after apply)
      [32m+[0m[0m max_session_duration  = 3600
      [32m+[0m[0m name                  = (known after apply)
      [32m+[0m[0m name_prefix           = "bedrock_nodes-eks-node-group-"
      [32m+[0m[0m path                  = "/"
      [32m+[0m[0m tags                  = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all              = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m unique_id             = (known after apply)

      [32m+[0m[0m inline_policy (known after apply)
    }

[1m  # module.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].aws_iam_role_policy_attachment.additional["DynamoDBAccess"][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "additional" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = (known after apply)
      [32m+[0m[0m role       = (known after apply)
    }

[1m  # module.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].aws_iam_role_policy_attachment.this["AmazonEC2ContainerRegistryReadOnly"][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "this" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
      [32m+[0m[0m role       = (known after apply)
    }

[1m  # module.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].aws_iam_role_policy_attachment.this["AmazonEKSWorkerNodePolicy"][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "this" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
      [32m+[0m[0m role       = (known after apply)
    }

[1m  # module.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].aws_iam_role_policy_attachment.this["AmazonEKS_CNI_Policy"][0m will be created
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "this" {
      [32m+[0m[0m id         = (known after apply)
      [32m+[0m[0m policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
      [32m+[0m[0m role       = (known after apply)
    }

[1m  # module.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].aws_launch_template.this[0][0m will be created
[0m  [32m+[0m[0m resource "aws_launch_template" "this" {
      [32m+[0m[0m arn                    = (known after apply)
      [32m+[0m[0m default_version        = (known after apply)
      [32m+[0m[0m description            = "Custom launch template for bedrock_nodes EKS managed node group"
      [32m+[0m[0m id                     = (known after apply)
      [32m+[0m[0m latest_version         = (known after apply)
      [32m+[0m[0m name                   = (known after apply)
      [32m+[0m[0m name_prefix            = "bedrock_nodes-"
      [32m+[0m[0m tags                   = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m tags_all               = {
          [32m+[0m[0m "Project" = "karatu-2025-capstone"
        }
      [32m+[0m[0m update_default_version = true
      [32m+[0m[0m vpc_security_group_ids = (known after apply)
        [90m# (2 unchanged attributes hidden)[0m[0m

      [32m+[0m[0m metadata_options {
          [32m+[0m[0m http_endpoint               = "enabled"
          [32m+[0m[0m http_protocol_ipv6          = (known after apply)
          [32m+[0m[0m http_put_response_hop_limit = 2
          [32m+[0m[0m http_tokens                 = "required"
          [32m+[0m[0m instance_metadata_tags      = (known after apply)
        }

      [32m+[0m[0m monitoring {
          [32m+[0m[0m enabled = true
        }

      [32m+[0m[0m tag_specifications {
          [32m+[0m[0m resource_type = "instance"
          [32m+[0m[0m tags          = {
              [32m+[0m[0m "Name"    = "bedrock_nodes"
              [32m+[0m[0m "Project" = "karatu-2025-capstone"
            }
        }
      [32m+[0m[0m tag_specifications {
          [32m+[0m[0m resource_type = "network-interface"
          [32m+[0m[0m tags          = {
              [32m+[0m[0m "Name"    = "bedrock_nodes"
              [32m+[0m[0m "Project" = "karatu-2025-capstone"
            }
        }
      [32m+[0m[0m tag_specifications {
          [32m+[0m[0m resource_type = "volume"
          [32m+[0m[0m tags          = {
              [32m+[0m[0m "Name"    = "bedrock_nodes"
              [32m+[0m[0m "Project" = "karatu-2025-capstone"
            }
        }
    }

[1m  # module.eks.module.eks.module.kms.data.aws_iam_policy_document.this[0][0m will be read during apply
  # (config refers to values not yet known)
[0m [36m<=[0m[0m data "aws_iam_policy_document" "this" {
      [32m+[0m[0m id                        = (known after apply)
      [32m+[0m[0m json                      = (known after apply)
      [32m+[0m[0m minified_json             = (known after apply)
      [32m+[0m[0m override_policy_documents = []
      [32m+[0m[0m source_policy_documents   = []

      [32m+[0m[0m statement {
          [32m+[0m[0m actions   = [
              [32m+[0m[0m "kms:*",
            ]
          [32m+[0m[0m resources = [
              [32m+[0m[0m "*",
            ]
          [32m+[0m[0m sid       = "Default"

          [32m+[0m[0m principals {
              [32m+[0m[0m identifiers = [
                  [32m+[0m[0m "arn:aws:iam::561876735341:root",
                ]
              [32m+[0m[0m type        = "AWS"
            }
        }
      [32m+[0m[0m statement {
          [32m+[0m[0m actions   = [
              [32m+[0m[0m "kms:CancelKeyDeletion",
              [32m+[0m[0m "kms:Create*",
              [32m+[0m[0m "kms:Delete*",
              [32m+[0m[0m "kms:Describe*",
              [32m+[0m[0m "kms:Disable*",
              [32m+[0m[0m "kms:Enable*",
              [32m+[0m[0m "kms:Get*",
              [32m+[0m[0m "kms:ImportKeyMaterial",
              [32m+[0m[0m "kms:List*",
              [32m+[0m[0m "kms:Put*",
              [32m+[0m[0m "kms:ReplicateKey",
              [32m+[0m[0m "kms:Revoke*",
              [32m+[0m[0m "kms:ScheduleKeyDeletion",
              [32m+[0m[0m "kms:TagResource",
              [32m+[0m[0m "kms:UntagResource",
              [32m+[0m[0m "kms:Update*",
            ]
          [32m+[0m[0m resources = [
              [32m+[0m[0m "*",
            ]
          [32m+[0m[0m sid       = "KeyAdministration"

          [32m+[0m[0m principals {
              [32m+[0m[0m identifiers = [
                  [32m+[0m[0m "arn:aws:iam::561876735341:user/Cloud-admin",
                ]
              [32m+[0m[0m type        = "AWS"
            }
        }
      [32m+[0m[0m statement {
          [32m+[0m[0m actions   = [
              [32m+[0m[0m "kms:Decrypt",
              [32m+[0m[0m "kms:DescribeKey",
              [32m+[0m[0m "kms:Encrypt",
              [32m+[0m[0m "kms:GenerateDataKey*",
              [32m+[0m[0m "kms:ReEncrypt*",
            ]
          [32m+[0m[0m resources = [
              [32m+[0m[0m "*",
            ]
          [32m+[0m[0m sid       = "KeyUsage"

          [32m+[0m[0m principals {
              [32m+[0m[0m identifiers = [
                  [32m+[0m[0m (known after apply),
                ]
              [32m+[0m[0m type        = "AWS"
            }
        }
    }

[1m  # module.eks.module.eks.module.kms.aws_kms_alias.this["cluster"][0m will be created
[0m  [32m+[0m[0m resource "aws_kms_alias" "this" {
      [32m+[0m[0m arn            = (known after apply)
      [32m+[0m[0m id             = (known after apply)
      [32m+[0m[0m name           = "alias/eks/project-bedrock-cluster"
      [32m+[0m[0m name_prefix    = (known after apply)
      [32m+[0m[0m target_key_arn = (known after apply)
      [32m+[0m[0m target_key_id  = (known after apply)
    }

[1m  # module.eks.module.eks.module.kms.aws_kms_key.this[0][0m will be created
[0m  [32m+[0m[0m resource "aws_kms_key" "this" {
      [32m+[0m[0m arn                                = (known after apply)
      [32m+[0m[0m bypass_policy_lockout_safety_check = false
      [32m+[0m[0m customer_master_key_spec           = "SYMMETRIC_DEFAULT"
      [32m+[0m[0m description                        = "project-bedrock-cluster cluster encryption key"
      [32m+[0m[0m enable_key_rotation                = true
      [32m+[0m[0m id                                 = (known after apply)
      [32m+[0m[0m is_enabled                         = true
      [32m+[0m[0m key_id                             = (known after apply)
      [32m+[0m[0m key_usage                          = "ENCRYPT_DECRYPT"
      [32m+[0m[0m multi_region                       = false
      [32m+[0m[0m policy                             = (known after apply)
      [32m+[0m[0m rotation_period_in_days            = (known after apply)
      [32m+[0m[0m tags                               = {
          [32m+[0m[0m "Project"               = "karatu-2025-capstone"
          [32m+[0m[0m "terraform-aws-modules" = "eks"
        }
      [32m+[0m[0m tags_all                           = {
          [32m+[0m[0m "Project"               = "karatu-2025-capstone"
          [32m+[0m[0m "terraform-aws-modules" = "eks"
        }
    }

[1m  # module.eks.module.eks.module.eks_managed_node_group["bedrock_nodes"].module.user_data.null_resource.validate_cluster_service_cidr[0m will be created
[0m  [32m+[0m[0m resource "null_resource" "validate_cluster_service_cidr" {
      [32m+[0m[0m id = (known after apply)
    }

[1mPlan:[0m [0m100 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  [32m+[0m[0m assets_bucket_name         = "bedrock-assets-alt-soe-025-3757"
  [32m+[0m[0m cluster_endpoint           = (known after apply)
  [32m+[0m[0m cluster_name               = "project-bedrock-cluster"
  [32m+[0m[0m dynamodb_table_arn         = (known after apply)
  [32m+[0m[0m dynamodb_table_name        = "bedrock-orders"
  [32m+[0m[0m github_deployment_role_arn = (known after apply)
  [32m+[0m[0m lambda_function_arn        = (known after apply)
  [32m+[0m[0m lambda_function_name       = "bedrock-asset-processor"
  [32m+[0m[0m mysql_db_instance_id       = (known after apply)
  [32m+[0m[0m mysql_endpoint             = (known after apply)
  [32m+[0m[0m mysql_password             = (sensitive value)
  [32m+[0m[0m mysql_username             = "admin"
  [32m+[0m[0m postgres_db_instance_id    = (known after apply)
  [32m+[0m[0m postgres_endpoint          = (known after apply)
  [32m+[0m[0m postgres_password          = (sensitive value)
  [32m+[0m[0m postgres_username          = "postgresadmin"
  [32m+[0m[0m rds_security_group_id      = (known after apply)
  [32m+[0m[0m region                     = "us-east-1"
  [32m+[0m[0m vpc_id                     = (known after apply)
[90m
─────────────────────────────────────────────────────────────────────────────[0m

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run "terraform apply" now.
