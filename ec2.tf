data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "bastion-ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id = module.network.public-subnet-id
  associate_public_ip_address = true
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id]
  key_name = aws_key_pair.key.key_name
//  provisioner "local-exec" { //to invoke a process on the machine
//    command = "touch ${self.id}"
//  }
}

resource "aws_instance" "app-ec2" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id = module.network.private-subnet-id
  vpc_security_group_ids = [ aws_security_group.allow_ssh-3000.id]
  key_name = aws_key_pair.key.key_name
}
