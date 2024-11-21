provider "aws" {
  region = "us-west-2"
}

resource "aws_eks_cluster" "mern_cluster" {
  name     = "mern-cluster"
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = aws_subnet.subnet[*].id
  }
}

resource "aws_eks_node_group" "mern_nodes" {
  cluster_name    = aws_eks_cluster.mern_cluster.name
  node_role_arn   = aws_iam_role.node_role.arn
  subnet_ids      = aws_subnet.subnet[*].id
  instance_types  = ["t3.medium"]
  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}

