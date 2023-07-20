resource "azurerm_dns_txt_record" "validation" {
  provider = azurerm.dns

  name                = "_dnsauth.plum"
  zone_name           = var.zone_name
  resource_group_name = var.dns_resource_group
  ttl                 = 300
  record {
    value = azurerm_static_site_custom_domain.this.validation_token
  }
}

resource "azurerm_dns_cname_record" "shutter" {
  provider = azurerm.dns

  name                = "${var.app_name}-shutter"
  zone_name           = var.zone_name
  resource_group_name = var.dns_resource_group
  ttl                 = 300

  record = azurerm_static_site.this.default_host_name
}