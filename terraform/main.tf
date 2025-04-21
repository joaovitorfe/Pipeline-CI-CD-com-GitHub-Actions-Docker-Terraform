
provider "aws" {
  region = var.region
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = var.key_name
  user_data     = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install docker -y
              sudo systemctl start docker
              sudo usermod -a -G docker ec2-user
              docker run -d -p 80:3000 ${var.docker_image}
              EOF

  tags = {
    Name = "AppServer"
  }
}
