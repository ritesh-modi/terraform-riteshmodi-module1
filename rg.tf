
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

module mymodule1 {
    source = "github.com/ritesh-modi/terraform-modules//modules/module1?ref=master"

    rgname1 = "rgmodule1"
    rgname2 = "rgmodule2"
    location1 = "west us"
    location2 = "west us2"
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

output myoutput4 {
    value = mymodule1.mymodule1.myoutput1
}
