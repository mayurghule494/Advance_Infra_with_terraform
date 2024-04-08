variable "region" {
  default = "us-east-2"
}

variable "AmiLinux" {
  type = map(string)

  default = {
    us-east-1 = "ami-080e1f13689e07408" # Virginia
    us-east-2 = "ami-0b8b44ec9a8f90422" # Ohio
    us-west-2 = "ami-08116b9957a259459" # Oregon
  }
}

/*variable "instance_type" {
  default     = "t2.micro"
  description = "instancee type"
}*/

variable "instance_types" {
  type        = list(string)
  default     = ["t2.micro", "t2.micro", "t2.micro", "t2.xlarge"]
  description = "instancee type"
}

variable "vpc-fullcidr" {
  default     = "192.168.0.0/16"
  description = "the vpc cdir"
}

variable "Subnet-Public-CIDR" {
  default     = "192.168.1.0/24"
  description = "the cidr of the 2a-Public Subnet"
}

variable "Subnet-Private-CIDR" {
  default     = "192.168.2.0/24"
  description = "the cidr of the 2a-Private Subnet"
}


variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
}

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 4
}

variable "instance_names" {
  description = "Name of instances"
  type        = list(string)
  default     = ["Maven", "Tomcat", "MySQL", "Nexus"]
}