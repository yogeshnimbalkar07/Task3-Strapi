
resource "aws_instance" "strapi" {
  ami           = "ami-0f58b397bc5c1f2e8" # Replace with your preferred AMI ID
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("us.sh")

  tags = {
    Name = "StrapiY"
  }


  }
  output "instance_public_ip" {
    value = aws_instance.strapi.public_ip
  }
