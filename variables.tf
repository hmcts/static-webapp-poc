variable "location" {
  default = "westeurope"
  description = "List of available regions for the resource type is 'westus2,centralus,eastus2,westeurope,eastasia,eastasiastage'"
}

variable "zone_name" {
  default = "sandbox.platform.hmcts.net"
}
variable "dns_resource_group" {
  default = "reformmgmtrg"
}

variable "product" {
  default = "cft-platform"
}

variable "env" {
  default = "sbox"
}

variable "app_name" {
  default = "plum"
}
