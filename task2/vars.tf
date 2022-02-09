# variable "AWS_ACCESS_KEY_ID" {
#   type = string
# }

# variable "AWS_SECRET_ACCESS_KEY" {
#   type = string
# }

variable "Region" {
  type    = string
  default = "eu-central-1"
}

variable "DB_NAME" {
  type    = string
  default = "s23database"
}

variable "DB_USER" {
  type    = string
  default = "dbadmin"
}


variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "security_group_ids" {
  type    = list(any)
  default = ["sg-0a8b5db2a7dcca42a", "sg-8d0f0dfe"]
}

variable "keypair" {
  type    = string
  default = "mvlasov_keypair_pem"
}
