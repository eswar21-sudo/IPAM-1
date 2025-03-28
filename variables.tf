variable "description" {
  description = "Description for IPAM"
  type        = string
}

variable "region" {
  description = "Region of IPAM"
  type = string
}

variable "operating_regions" {
  description = "List of AWS regions for IPAM"
  type        = list(string)
}

variable "cidr_pools" {
  description = "List of CIDR pools for IPAM"
  type = list(object({
    region                 = string
    description            = string
    cidr                   = string
    auto_import            = bool
    default_netmask_length = number
  }))
}
