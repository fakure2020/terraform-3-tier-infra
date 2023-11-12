resource "aws_instance" "app" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  availability_zone = var.app_avaibality_zones[0]
  associate_public_ip_address = var.app_public_ip
  subnet_id = var.public_subnet1
  

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-app-application"
      
  })

  }


resource "aws_security_group" "app-sg" {
  name        = "allow_tls"
  description = "port 80 is allowd to app server"
  vpc_id      = var.vpc_id

  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_cidr]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-app-sg"
      
  })
}

