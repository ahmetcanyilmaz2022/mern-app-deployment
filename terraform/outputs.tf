output "cluster_endpoint" {
  value = aws_eks_cluster.mern_cluster.endpoint
}

output "cluster_certificate_authority" {
  value = aws_eks_cluster.mern_cluster.certificate_authority[0].data
}

