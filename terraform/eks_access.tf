resource "aws_eks_access_entry" "fortress_dev_view" {
  cluster_name  = module.eks.cluster_name
  principal_arn = module.iam.fortress_dev_view_arn

  type = "STANDARD"
}

resource "aws_eks_access_policy_association" "fortress_dev_view" {
  cluster_name  = module.eks.cluster_name
  principal_arn = module.iam.fortress_dev_view_arn

  policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"

  access_scope {
    type = "namespace"

    namespaces = [
      "retail-app"
    ]
  }
}