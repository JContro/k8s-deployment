locals {
  zone        = format("%s.%s", var.environment, var.dns)
  domain_name = lower(format("%s%s.%s", var.project, var.context, local.zone))
}

resource "random_string" "eks_id" {
  length  = 8
  special = false
  lower   = true
  upper   = false
}


resource "aws_acm_certificate" "eks" {
  domain_name       = local.domain_name
  validation_method = "DNS"

  tags = merge(tomap({ "Created" = timestamp() }), local.default_tags)

  lifecycle {
    create_before_destroy = true
  }
}