resource "aws_route53_record" "trs_internal" {
  zone_id = var.zone_id
  name    = var.record_name
  type    = "A"
  alias {
    name                   = var.alb_dns_name
    zone_id                = var.alb_zone_id
    evaluate_target_health = true
  }
}
