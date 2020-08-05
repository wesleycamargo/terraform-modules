
resource "azurerm_app_service_plan" "servicePlan" {
  name                = var.servicePlanName
  location            = var.location
  resource_group_name = var.rgname
  kind                = "app"

  sku {
    tier     = "Basic"
    size     = "B1"
    capacity = "1"
  }

  tags = {	  
    removeDaily = var.removeDaily 
	}
}




