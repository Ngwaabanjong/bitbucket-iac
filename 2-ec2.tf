resource "aws_instance" "MyServer" {
  ami                         = "ami-04b4f1a9cf54c11d0"
  instance_type               = "t2.micro"
  key_name                    = "bjuatkey"
  monitoring                  = true
  subnet_id                   = "subnet-07833c4af7572bcad"
  vpc_security_group_ids      = ["sg-0b52fa29523a310b5"]
  associate_public_ip_address = true

  tags = {
    Name = "bitbucket-lab-ec2"
  }
}
