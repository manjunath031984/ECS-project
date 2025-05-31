resource "aws_ecs_cluster" "trs" {
  name = var.ecs_cluster_name
}

output "cluster_name" {
  value = aws_ecs_cluster.trs.name
}
