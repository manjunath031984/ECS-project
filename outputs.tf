output "ecs_cluster_name" {
  value = module.ecs.cluster_name
}

output "alb_dns" {
  value = module.alb.dns_name
}
