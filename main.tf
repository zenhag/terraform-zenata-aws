# main.tf

# Define variables
variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "ID of the AMI to use for the instance"
  type        = string
  default     = "ami-12345678" # Update with your AMI ID
}

# Create EC2 instance resource
resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
