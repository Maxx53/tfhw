provider "aws" {
  region = var.Region

  # Note: keys reading from ENV
  # access_key = var.AWS_ACCESS_KEY_ID
  # secret_key = var.AWS_SECRET_ACCESS_KEY

  default_tags {
    tags = {
      Owner = "maksim_vlasov@epam.com"
    }
  }
}
