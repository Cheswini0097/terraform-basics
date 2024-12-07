resource "aws_instance" "project" {
    for_each = var.instances
    ami = "ami-09c813fb71547fc4f"
    subnet_id     = "subnet-0958a471debd0c57a"
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.project.id]
    tags = {
        Name = each.key
    }
}
resource "aws_security_group" "project" {
    name        = "allow_sshh" #allow_ssh is already there in my account
    description = "Allow port number 22 for SSH access"

    # usually we allow everything in egress
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow_sshh"
    }
}