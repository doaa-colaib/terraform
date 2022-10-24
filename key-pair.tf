resource "tls_private_key" "key" {
  algorithm = "RSA"
}
resource "aws_key_pair" "key" {
  key_name    = "terra-key2"
  public_key = tls_private_key.key.public_key_openssh
  }
