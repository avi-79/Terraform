provider "aws"{

 region = "${var.region}"


 }

resource "aws_instance" "ec2_pro" {

 availability_zone = "${var.availability_zones}"

 ami ="${var.ami}"

 instance_type = "${var.instance_type}"

 key_name = "new"

 count = "${var.instance_count}"

 tags = {

 Name = "Production server"

 Name = "Terraform-${count.index + 1}"

 }

  security_groups= ["${aws_security_group.launch-wizard-20.name}"] 

 }



 resource "aws_security_group" "launch-wizard-20" {

 name="launch-wizard-20"


 ingress {

 from_port = 22

 to_port = 22

 protocol = "tcp"

 cidr_blocks = ["0.0.0.0/0"]

 }

 ingress {

 from_port = 8080

 to_port = 8080

 protocol = "tcp"

 cidr_blocks = ["0.0.0.0/0"]

 }

 egress {

 from_port = 0

 to_port = 0

 protocol = "-1"

 cidr_blocks = ["0.0.0.0/0"]


 }

 }


# resource "aws_ebs_volume" "volume1" {

# availability_zone = "us-east-2b"

# size = 1

# encrypted = true


# }

# resource "aws_volume_attachment" "ebsattchment" {

# device_name = "/dev/sdh"

# volume_id = "${aws_ebs_volume.volume1.id}"

# instance_id = "${aws_instance.ec2_pro.id}"

 

# }
