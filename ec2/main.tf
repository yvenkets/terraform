module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "venket_Bio"

  ami                    = "ami-06a627b7e24024728"
  instance_type          = "t2.micro"
  key_name               = "deep"
  monitoring             = true
  vpc_security_group_ids = ["sg-05562793e4c3b2f37"]
  subnet_id              = "subnet-e8b7e4a4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
