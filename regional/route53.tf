resource "aws_route53_record" "this" {
  zone_id = var.route53_zone_id

  name    = var.region
  type    = "TXT"
  ttl     = 900
  records = ["region=${var.region}"]
}
