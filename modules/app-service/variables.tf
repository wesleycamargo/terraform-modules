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
variable "appServiceName" {
    type = string
}

variable "removeDaily" {	  
  default = "false"
}