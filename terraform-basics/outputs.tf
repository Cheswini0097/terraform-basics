output "pubic_ip" {
    value = aws_instance.terraform.public_ip
    sensitive = false
    description = "this is to get the public_ ip address of inatance" 
}
   