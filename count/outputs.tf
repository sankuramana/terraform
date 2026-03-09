output "instances_output" {
    value = aws_instance.terraform
  
}

output "aws_route53_output" {
value = aws_route53_record.roboshop
}