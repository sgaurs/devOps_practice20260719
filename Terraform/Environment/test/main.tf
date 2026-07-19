module "rgbnega" {
  source = "../../Azurerm_RG"
  myrg = var.rgdetails
}

module "sabnega" {
  source = "../../Azurerm_SA"
  depends_on = [ module.rgbnega ]

  mystg = var.stgdetails
}