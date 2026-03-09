variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}                                            #variable 

variable "instance_type" {
    type = string   #not mandatory
    default = "t3.micro"
}
variable "ec2_tags" {
    #type = map #remove or keep map
    default = {
        Name = "terraform-demo"  #metadata for tag 
        Terraform = "true"
        Project = "joindevops"
        Environment = "dev"
    }
  
}
variable "sg_name" {
    type = string
    default = "allow-everythinh"
    description = "dwjsbdcyusmsbc" #optinal
  
}
variable "cidr" {
    type = list
    default = ["0.0.0.0/0"] #defaultvalues you need to mention
  
}
variable "ingress_from_port" {
     type = number
    default = 0
  
}
variable "ingress_to_port" {
     type = number
    default = 0
  
}
variable "egress_from_port" {
     type = number
    default = 0
  
}
variable "egress_to_prrt" {
    type = number
    default = 0
  
}
variable "protocol" {
    type = string
    default = "-1"

  
}


