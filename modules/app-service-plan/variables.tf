variable "rgname" {
    type = string
}
variable "location" {
    type = string
    default = "eastus2"
}
variable "servicePlanName" {
    type = string
}

variable "removeDaily" {	  
  type = string
  default = "false"
}
