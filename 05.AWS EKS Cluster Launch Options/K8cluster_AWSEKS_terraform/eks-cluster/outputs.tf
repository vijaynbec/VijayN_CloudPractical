output "eks_cluster_name" {
  value = aws_eks_cluster.prod.name
}

output "eks_endpoint" {
  value = aws_eks_cluster.prod.endpoint
}

output "eks_certificate_authority" {
  value = aws_eks_cluster.prod.certificate_authority[0]
}

output "nodegroup_name" {
  value = aws_eks_node_group.prod_nodes.node_group_name
}