locals {  
  rg = join("/",slice(split("/",var.scope),1,5))
}