variable "region" {
description = "Region where the ec2 instance is created"
}



variable "availability_zones" {
description = "Availability zones for the region where instances is created"
}



variable "ami" {
description = "ami id for the instance creating"
}



variable "instance_type"{
description = "instance type"
type = string
}



variable "instance_count" {
default = "1"
}

