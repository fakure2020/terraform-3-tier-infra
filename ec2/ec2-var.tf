variable "instance_ami" {
  type = string
  description = "ami_id"
  default = "ami-0df435f331839b2d6"
}

variable "instance_type" {
  type = string
  description = "ec2 type"
  default = "t2.micro"
  
}

variable "public_subnet1" {
  type = string
  description = "public subnet for app server"
  

}

variable "app_avaibality_zones" {
  type        = list(string)
  description = "Availability zone for public_subnet1"
  default = [ "us-east-1a", "us-east-1b" ]
  
}

variable "app_public_ip" {
  type = bool
  default ="true"
  
}


variable "tags" {
  type = map(string)
  description = "tags"

}

variable "vpc_id" {
  type = string
  description = "vpc id for instance in public subnet"
  
}

variable "vpc_cidr" {
  type = string
  default = "0.0.0.0/16"
  
}