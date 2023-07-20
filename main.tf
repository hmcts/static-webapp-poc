resource "azurerm_resource_group" "this" {
  location = var.location
  name     = "plum-shutter-poc-rg"
}

resource "azurerm_static_site" "this" {
  name                = var.app_name
  resource_group_name = azurerm_resource_group.this.name
  location            = var.location
  tags                = module.tags.common_tags
}

resource "azurerm_static_site_custom_domain" "this" {
  static_site_id  = azurerm_static_site.this.id
  domain_name     = "plum.${var.zone_name}"
  validation_type = "dns-txt-token"
}
