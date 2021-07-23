
data "aws_ami" "web" {
  
  owners = ["*************"] # Canonical
}
data "aws_ami" "app" {
  
  owners = ["*************"] # Canonical
}

data "aws_ami" "db" {
  
  owners = ["*************"] # Canonical
}

# can be delpoyedon public subnet
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  
  tags = {
    Name = "test"
  }
}

# can be delpoyedon private subnet
resource "aws_instance" "app" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "test"
  }
}

# can be delpoyedon dmz subnet
resource "aws_instance" "db" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "test"
  }
}
