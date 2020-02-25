module "ansible-control" {
  source        = "modules/instances"
  instance_name = "ansible-control"
  instance_machine_type = "n1-standard-1"
  instance_zone = "europe-west2-a"
  instance_image = "centos-7-v20200205"
  subnet_name = "default"
  external_enabled = "true"
  startup_script = "sudo yum list epel-release && sudo yum install -y ansible git"
}
