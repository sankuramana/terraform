# -------------------------------
# EC2 INSTANCE RESOURCE (4 ec2 is cerated)
# -------------------------------
resource "aws_instance" "terraform" {

  #count = 4                               # Creates 4 EC2 instances (loop)

  ami           = "ami-0220d79f3f480ecf5" # AMI ID for the instance
  instance_type = "t3.micro"              # EC2 instance type

  vpc_security_group_ids = [
    aws_security_group.allow_everythig.id # Attach the SG created below
  ]

  tags = {
    Name      = "ec2-by-sanku"
    Terraform = "true"                          
  }
}

# -----------------------------------------
# SECURITY GROUP RESOURCE (1 SG is creating)
# -----------------------------------------
resource "aws_security_group" "allow_everythig" {

  name = "allow-everything-1"     # Actual SG name in AWS

  # Ingress = incoming traffic rules
  ingress {
    from_port   = 0               # 0 to 0 with protocol -1 = ALL ports
    to_port     = 0
    protocol    = "-1"            # -1 = ALL protocols
    cidr_blocks = ["0.0.0.0/0"]   # Open to entire internet
  }

  # Egress = outgoing traffic rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"            # Allow all outgoing traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-everything"     # User-friendly name shown in AWS console
  }
}
