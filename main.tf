# Configure the AWS Provider
provider "aws" {
    region      = "us-east-1"
    access_key  = "AKIAVY5FI2QE6YRCOxxx"
    secret_key  = "4CwkvIU820LjDGNVQjW0laVZGaPetdeb8yFecxxx"
}

#create ec resources
resource "aws_instance" "my-first-instance" {
  ami           = "ami-090fa75af13c156b4" //mendapatkan AMI ID ini dari halaman OS ketika kt membuat instance biasa
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}