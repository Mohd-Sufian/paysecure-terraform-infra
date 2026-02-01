module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = var.kubernetes_version
  
  enable_cluster_creator_admin_permissions = true

  cluster_endpoint_public_access = true

  vpc_id     = aws_vpc.this.id
  subnet_ids = aws_subnet.private[*].id

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      min_size     = 1
      max_size     = 3

      instance_types = ["m7i-flex.large"]
      capacity_type  = "ON_DEMAND"
    }
  }

  tags = {
    Project = var.project_name
  }
}
