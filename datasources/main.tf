resource "aws_security_group" "allow_ssh_terraform" {
    name         = "allow ssh"
    description  = "allow port 22"


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
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "allow ssh"
  }

}
resource "aws_instance" "terraform" {
    ami           = data.aws_ami.joindevops.id
    instance_type = "t2.micro"
    subnet_id     = "subnet-0958a471debd0c57a"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = {
    Name = "allow ssh"
}

  }