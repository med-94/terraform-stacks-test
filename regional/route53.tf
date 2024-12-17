resource "aws_route53_record" "this" {
  zone_id = var.route53_zone_id

  name    = var.region
  type    = "TXT"
  records = ["region=${var.region}"]
}
