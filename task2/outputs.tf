
output "ec2_address" {
  value = aws_instance.nginx_s23_ec2.public_dns
}

output "rds_address" {
  value = aws_db_instance.aws_s23-mysql.address
}

output "rds_creds" {
  value = "${var.DB_NAME}, ${var.DB_USER} : ${random_string.mysql_password.result}"
}
