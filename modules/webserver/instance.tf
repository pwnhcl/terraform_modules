resource "aws_key_pair" "terra_key" {
  key_name = var.key_name
  public_key = var.public_key

}

resource "aws_instance" "ec2_instance" {
    ami = var.ami_id
    instance_type = var.instances_type
    key_name = aws_key_pair.terra_key.key_name
}