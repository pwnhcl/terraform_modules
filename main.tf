module "ec2_module" {
  source = "./modules/webserver"

  ami_id = var.ami_id
  instances_type = var.instances_type
  public_key = file("${path.module}/id_rsa.pub")
  key_name = var.key_name
}


output "ec2publicip" {
  value = module.ec2_module.publicIP
}