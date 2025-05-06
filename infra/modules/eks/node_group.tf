resource "aws_eks_node_group" "nodes" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "${var.cluster_name}-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn
  subnet_ids      = var.subnet_ids
  disk_size = 30

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
  
  instance_types = ["t2.micro"]

  depends_on = [aws_iam_role_policy_attachment.eks_node_AmazonEKSWorkerNodePolicy]
}
# This code defines an AWS EKS node group resource. It specifies the cluster name, node group name, node role ARN, subnet IDs, scaling configuration, and instance types. The `depends_on` attribute ensures that the node group is created only after the necessary IAM role policy attachments are in place.