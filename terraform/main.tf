resource "aws_security_group" "two_tier_sg" {

  name = "two-tier-app-security-group"


  ingress {

    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }


  ingress {

    from_port = 5000
    to_port   = 5000
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }


  egress {

    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

}



resource "aws_instance" "two_tier_server" {

  ami = "ami-01a00762f46d584a1"

  instance_type = var.instance_type
  key_name = "Ronu"

  security_groups = [
    aws_security_group.two_tier_sg.name
  ]


  user_data = file("userdata.sh")


  tags = {

    Name = "two-tier-app-server"

  }

}