module "ec2" {

  source = "../Modules"

  region = "us-east-2"

  availability_zones = "us-east-2b"

 ami = "ami-0231217be14a6f3ba"

  instance_type = "t2.micro"

  }
