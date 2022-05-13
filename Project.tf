provider "aws" {

    access_key = "AKIAS62POD7PLXOBCVG3"
    secret_key = "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"
    region = "us-east-1"
}

resource "aws_instance" "Terrafrom_project" {
  ami = "ami-09d56f8956ab235b3"
  instance_type = "t3.micro"
  key_name ="Terraform_project"
}
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-08c670d20de96c918"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

   ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
}

