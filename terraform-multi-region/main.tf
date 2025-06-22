resource "aws_instance" "instance1" {
  ami           = var.dev-ami
  instance_type = var.dev-instance_type
  provider      = aws.east1

  tags = {
    Name = "terraform-instance1"
  }
}
resource "aws_instance" "instance2" {
  ami           = var.stg-ami
  instance_type = var.stg-instance_type
  provider      = aws.east2

  tags = {
    Name = "terraform-instance2"
  }
}
