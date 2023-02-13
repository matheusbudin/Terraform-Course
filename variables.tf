variable "location" {
  description = "Variavel que indica a regiao onde os recursos vao ser criados"  #paode deixar vazio o bloco e indicar no cli por bash$ export location = 
  type = string
  default = "Brazil South"
}   

variable "account_tier" {
    description = "Tier da Storage Account na Azure"
    type = string
    default = "Standard"
  
}