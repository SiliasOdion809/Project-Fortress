module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.34"

  cluster_enabled_log_types = [
    "api",
    "audit",
    "authenticator",
    "controllerManager",
    "scheduler"
  ]

  enable_cluster_creator_admin_permissions = false

  vpc_id = var.vpc_id

  subnet_ids = var.private_subnet_ids

  enable_irsa = true

  cluster_endpoint_public_access = true

  eks_managed_node_groups = {
    bedrock_nodes = {
      instance_types = ["t3.small"]
      min_size       = 2
      max_size       = 3
      desired_size   = 3

      iam_role_additional_policies = {

        DynamoDBAccess = var.dynamodb_policy_arn
      }
    }
  }

  tags = {
    Project = "karatu-2025-capstone"
  }
 

 access_entries = {
    github_actions = {
      principal_arn = var.github_deployment_role_arn

      policy_associations = {
        cluster_admin = {
          policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"

          access_scope = {
            type = "cluster"
          }
        }
      }
    }
  
    cloud_admin = {
      principal_arn = var.cloud_admin_arn

      policy_associations = {
        cluster_admin = {
          policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"

          access_scope = {
            type = "cluster"
          }
        }
      }
    }
  }

}



