variable "tenancy_ocid" {}

# VCN
variable "network_cidrs" {
  type = "map"

  default = {
    VCN-CIDR        = "10.0.0.0/16"
    PublicSubnetAD1 = "10.0.10.0/24"
    PublicSubnetAD2 = "10.0.11.0/24"
    PublicSubnetAD3 = "10.0.12.0/24"
    masterSubnetAD1 = "10.0.20.0/24"
    masterSubnetAD2 = "10.0.21.0/24"
    masterSubnetAD3 = "10.0.22.0/24"
    slaveSubnetAD1  = "10.0.30.0/24"
    slaveSubnetAD2  = "10.0.31.0/24"
    slaveSubnetAD3  = "10.0.32.0/24"
  }
}

variable "vcn_dns_name" {
  default = "ocijenkins"
}

variable "label_prefix" {
  type    = "string"
  default = ""
}

variable "compartment_ocid" {}

variable "http_port" {
  description = "The port to use for HTTP traffic to Jenkins"
  default     = 8080
}

variable "jnlp_port" {
  description = "The Port to use for Jenkins master to slave communication bewtween instances"
  default     = 49187
}
