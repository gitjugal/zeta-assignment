resource "aws_network_interface" "eni" {
  subnet_id   = var.subnet_id

  tags = {
    Name = "primary_network_interface"
  }
}
