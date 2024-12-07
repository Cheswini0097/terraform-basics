locals {
  domain_name   = "cheswini."
  zone_id       = "Z06610612YINEVKPZBC71"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
  # count.index will not work in locals
}