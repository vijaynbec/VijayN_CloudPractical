resource "aws_eks_cluster" "prod" {
  name     = var.cluster_name
  version  = var.k8s_version
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids              = var.private_subnet_ids
    endpoint_private_access = false
    endpoint_public_access  = true
  }

  enabled_cluster_log_types = ["api", "audit"]

  tags = {
    Environment = "production"
    ManagedBy   = "Terraform"
  }
}

resource "aws_eks_node_group" "prod_nodes" {
  cluster_name    = aws_eks_cluster.prod.name
  node_group_name = "eks-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn
  subnet_ids      = var.private_subnet_ids



  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  instance_types = [var.node_instance_type]
  ami_type       = "AL2_x86_64"

  tags = {
    Name        = "eks-node-group"
    Environment = "production"
  }
}