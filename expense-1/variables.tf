variable "instance_names" {
    type = list(string)
    default = ["mysql","backend","frontend"]
    description = "expense-project"

}
variable "zone_id" {
    default = "Z06610612YINEVKPZBC71"
}
variable "domain_name" {
  default = "daws81s.online"
}
