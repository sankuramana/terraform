 # instance_type = var.environment == "dev"? "t3.micro" : "t3.medium"
  # + instance_type                        = "t3.medium

variable "environment" {
    default = "qa"  
  
}