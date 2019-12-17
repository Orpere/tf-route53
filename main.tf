provider "aws" {
  version = "= 2.38"
  region  = "${var.region}"
}
resource "aws_route53_zone" "primary" {
  name = "example.xt"
}
resource "aws_route53_record" "www-dev" {
  allow_overwrite = true
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "www"
  type    = "CNAME"
  ttl     = "5"


  weighted_routing_policy {
    weight = 10
  }

  set_identifier = "dev"
  records        = ["dev.example.xt"]
}

resource "aws_route53_record" "www-live" {
  allow_overwrite = true
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "www"
  type    = "CNAME"
  ttl     = "5"

  weighted_routing_policy {
    weight = 90
  }

  set_identifier = "live"
  records        = ["live.example.xt"]
}