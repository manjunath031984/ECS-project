resource "aws_lb" "trs_nlb" {
  name               = "trs-nlb"
  internal           = true
  load_balancer_type = "network"
  subnets            = var.private_subnets
}

output "dns_name" {
  value = aws_lb.trs_nlb.dns_name
}
