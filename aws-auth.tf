module "eks_aws_auth" {
  source  = "terraform-aws-modules/eks/aws//modules/aws-auth"
  version = "~> 20.0"

  manage_aws_auth_configmap = true

  aws_auth_users = [
    {
      userarn  = "arn:aws:iam::983988120878:root"
      username = "admin"
      groups   = ["system:masters"]
    }
  ]

  depends_on = [module.eks]
}
