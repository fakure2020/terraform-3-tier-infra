variable "ami" {
  type = string
  description = "ec2 ami id "
  default = "ami-05c13eab67c5d8861"
  
}

variable "instance_type" {
  type = string
  description = "type of instance"
  default = "t2.micro"

  
}

variable "subnet_id" {
  type = string
  description = "subnet id to linch instance"
  
  
}




variable "tags" {
  type = map(string)
  description = "tags"
  
}

variable "vpc_id" {
  type = string
  description = "vpc id to lunch sg"
  
}