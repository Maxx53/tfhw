data "aws_ami" "latest_amazon_linux" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "nginx_s23_ec2" {
  ami                    = data.aws_ami.latest_amazon_linux.id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_group_ids
  key_name               = var.keypair

  user_data = file("user-data-nginx.sh")

  tags = {
    Name = "nginx_s23_ec2"
  }

  volume_tags = {
    Owner = "maksim_vlasov@epam.com"
  }
}
