resource "aws_instance" "terraform" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids= [aws_security_group.allow_everythig.id]
  tags = var.ec2_tags #tags expect  #key-value


   
}
# one resource shoul be in one block even that can be simple resourec
resource "aws_security_group" "allow_everythig" { #name of resourece== allw_everything #terraform-reffrence
  # ... other configuration ...
  name = var.sg_name  ##???? #security groupname  #key-value
  ingress {
    from_port       = var.ingress_from_port  #from port 0 to o means all ports
    to_port         = var.egress_to_prrt
    protocol        = var.protocol # -1 means all protocols
    cidr_blocks = var.cidr #internet
  }
  
  egress {
    from_port       = var.egress_from_port
    to_port         = var.egress_to_prrt
    protocol        = var.protocol
    cidr_blocks =["0.0.0.0/0"] #ipvs
    
    
  }
  tags = {  #this name is for user display  #key-value
    Name= "allow-everythig"

  }

}

  
