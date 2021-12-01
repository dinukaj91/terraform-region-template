provider "aws" {
  region = var.aws_region
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "${var.environment}-terraform-state-acme-${var.aws_region}"
    key    = "vpc/tf.state"
    region = var.aws_region
  }
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t3.micro"
  subnet_id   = data.terraform_remote_state.vpc.outputs.private_subnet_ids[0]
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name


  tags = {
    Name = "${var.environment}-${var.app}"
  }

  user_data = <<EOF
#!/bin/bash
mkdir /tmp/ssm
cd /tmp/ssm
wget https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/debian_amd64/amazon-ssm-agent.deb
sudo dpkg -i amazon-ssm-agent.deb
sudo systemctl enable amazon-ssm-agent
  EOF
}

resource "aws_iam_role" "ec2_role" {
  name               = "${var.app}-${var.environment}-ec2-instance-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ec2_ssm_policy" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = "${var.app}-${var.environment}--ec2-instance-profile"
  role = aws_iam_role.ec2_role.name
}