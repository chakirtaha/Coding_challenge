resource "aws_directory_service_directory" "bar" {
  name     = "${var.name}"
  password = "${var.password}"
  edition  = "Standard"
  type     = "MicrosoftAD"

  vpc_settings {
    vpc_id     = aws_vpc.main.id
    subnet_ids = [aws_subnet.foo.id, aws_subnet.bar.id]
  }

}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.az1}"
  cidr_block        = "10.0.1.0/24"
}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.az2}"
  cidr_block        = "10.0.2.0/24"
}
