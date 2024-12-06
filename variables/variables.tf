variable "ami" {
  description = "The AMI ID to use for the instance."
  default = "ami-09c813fb71547fc4f"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use."
  type        = string
  default     = "t2.micro"  # Default to a cost-effective type
}

variable "subnet_id" {
  description = "The ID of the subnet where the instance will be launched."
  default     =  "subnet-0958a471debd0c57a"
  type        = string
}

variable "security_group_name" {
  description = "The name of the security group."
  type        = string
  default     = "allow ssh"
}

variable "tags" {
  description = "Tags to assign to resources."
  type        = map(string)
  default     = {
    Name = "allow ssh"
  }
}
