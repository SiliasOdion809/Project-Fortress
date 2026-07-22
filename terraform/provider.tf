# AWS Provider Configuration
provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project = "karatu-2025-capstone"
    }
  }
}

# Retrieve EKS Cluster Information
data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_name

  depends_on = [
    module.eks
  ]
}

# Retrieve Authentication Token for the EKS Cluster
data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_name

  depends_on = [
    module.eks
  ]
}

/*provider "kubernetes" {
  host = data.aws_eks_cluster.cluster.endpoint

  cluster_ca_certificate = base64decode(
    data.aws_eks_cluster.cluster.certificate_authority[0].data
  )

  exec {
    api_version = "client.authentication.k8s.io/v1beta1"

    command = "aws"

    args = [
      "eks",
      "get-token",
      "--cluster-name",
      data.aws_eks_cluster.cluster.name
    ]
  }
}

# Helm Provider Configuration
provider "helm" {
  kubernetes {
    host = data.aws_eks_cluster.cluster.endpoint

    cluster_ca_certificate = base64decode(
      data.aws_eks_cluster.cluster.certificate_authority[0].data
    )

    exec {
      api_version = "client.authentication.k8s.io/v1beta1"

      command = "aws"

      args = [
        "eks",
        "get-token",
        "--cluster-name",
        data.aws_eks_cluster.cluster.name
      ]
    }
  }
}*/
