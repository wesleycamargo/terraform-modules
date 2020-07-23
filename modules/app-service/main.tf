
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
	  environment = "Terraform Test RG"
	}
}

resource "azurerm_app_service" "appservice" {
  name                = var.appServiceName
  location            = var.location
  resource_group_name = var.rgname
  app_service_plan_id = azurerm_app_service_plan.servicePlan.id
 

  site_config {
    always_on                = true
    dotnet_framework_version = "v4.0"

    default_documents = [
      "Default.htm",
      "Default.html",
      "Default.asp",
      "index.htm",
      "index.html",
      "iisstart.htm",
      "default.aspx",
      "index.php",
      "hostingstart.html",
    ]
  }
}