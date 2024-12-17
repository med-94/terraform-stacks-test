component "baseline_global" {
  source = "./global"

  inputs = {
    alias = var.alias
    domain = var.domain
  }

  providers = {
    # Global state goes in eu-west-1
    aws = provider.aws.this["eu-west-1"]
  }
}

component "baseline_regional" {
  for_each = var.regions

  source = "./regional"
  inputs = {
    region = each.value
    route53_zone_id = component.baseline_global.route53_zone_id
  }

  providers = {
    aws = provider.aws.this[each.value]
  }
}
