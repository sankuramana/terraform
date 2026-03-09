# resource "aws_route53_record" "roboshpo" {
#     count= 4                 #size#??
#   zone_id =  "${var.zone_id}" # Reference to the hosted zone
#   name    = "${var.instances[count.index]}.${var.domain_name}"             # Full domain name for the record
#   type    = "A"                              # Record type (e.g., A, CNAME, MX, NS, TXT)
#   ttl     = 1                                # Time To Live in seconds
#   records = [aws_instance.terraform[count.index].private_ip]
#    allow_overwrite = true                 # List of record values #["192.0.2.1"]    
# }
# #  aws_instance_terrform[count.index]=instance name and its full access
# #  [aws_instance.terraform[count.index].private_ip]= acess plus private ip receive
# #  [aws_instance.terraform[count.index].private_ip]=input for recordname
