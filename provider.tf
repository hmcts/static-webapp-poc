provider "azurerm" {
  features {}
}

provider "azurerm" {
  features {}
  alias = "dns"

  subscription_id = "ed302caf-ec27-4c64-a05e-85731c3ce90e"
}