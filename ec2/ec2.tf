resource "aws_instance" "terraform" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids= [aws_security_group.allow_everythig.id]


  tags = { #map or object
    Name = "terraform"
    Terraform= "true"
  }
}

resource "aws_security_group" "allow_everythig" {
  name = "allow-evrything" 
  ingress {
    from_port       = 0 #from port 0 to o means all ports
    to_port         = 0
    protocol        = "-1" # -1 means all protocols
    cidr_blocks =["0.0.0.0/0"] #internet
  }
  
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks =["0.0.0.0/0"] 
     
    
  }
  tags = {   #meta data
    Name= "allow-everythig"

  }

}

  
