resource "aws_instance" "vm" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = aws_network_interface.eni.id
    device_index         = 0
  }

  tags = {
    Name   = var.ec2_name
    Environment = var.environment
  }
}