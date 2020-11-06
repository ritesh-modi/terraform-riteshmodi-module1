
variable rgname1 {
    type = "string"
}

variable rgname2 {
    type = "string"
}

variable location1 {
    type = "string"
}

variable location2 {
    type = "string"
}

resource azurerm_resource_group myrg {
    name= var.rgname1
    location  = var.location1


}

resource azurerm_resource_group myrg1 {
    name= var.rgname2
    location  = var.location2

}



output myoutput1 {
    value = azurerm_resource_group.myrg.id
}

output myoutput2 {
    value = azurerm_resource_group.myrg.id
}

output myoutput3 {
    value = azurerm_resource_group.myrg
}