 variable "instances" {
     default = ["mongodb","redis","rabbitmq","mysql"] #0=mongodb ,1=redis, 2=rabbitmq
  
}
variable "zone_id" {
    default = "Z0240592U12NCJ6BG5HL"
  
}
variable "domain_name" { #mongodb.aws45.fun == var.instanaces[count.index].var.domain_name
     default = "aws45.fun"
  
}