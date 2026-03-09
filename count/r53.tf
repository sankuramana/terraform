# ---------------------------------------------------------
# ROUTE 53 RECORDS (Creates 4 DNS A-Records)
# ---------------------------------------------------------
resource "aws_route53_record" "roboshop" {
  count            = length(var.instances)                                 # Create 4 DNS records (loop)
  zone_id          = var.zone_id                        # Hosted Zone ID
  name             = "${var.instances[count.index]}.${var.domain_name}"  # Each record gets a unique name, e.g., web1.example.com
  type             = "A"                                # A record → maps name → IP
  ttl              = 1                                  # DNS TTL in seconds
  records          = [aws_instance.terraform[count.index].private_ip]  # Points the DNS record to the private IP of each EC2
  allow_overwrite  = true                               # Replace existing record if exists

}
 # records          = [aws_instance.terraform[count.index].private_ip]  # Points the DNS record to the private IP of each EC2
