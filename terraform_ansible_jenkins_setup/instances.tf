resource "aws_instance" "jenkins" {
  ami                    = "ami-053b0d53c279acc90" # Ubuntu server 22.04
  instance_type          = "t3.mini" # Do not forget to turn off the instance after the test (56$ per month)
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  key_name               = "sep_group"
  iam_instance_profile = aws_iam_instance_profile.Jenkins_One.name

  tags = {
    Name = "Jenkins_test"
  }
}

