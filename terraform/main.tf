module "ansible-control" {
  source        = "modules/instances"
  instance_name = "ansible-control"
  instance_machine_type = "n1-standard-1"
  instance_zone = "europe-west2-a"
  instance_image = "centos-7-v20200205"
  subnet_name = "default"
  external_enabled = "true"
  startup_script = "sudo yum install -y wget && wget https://raw.githubusercontent.com/bharatmicrosystems/ansible-practice/master/scripts/ansible-control.sh && sh ansible-control.sh k8smaster01"
}
module "k8smaster01" {
  source        = "modules/instances"
  instance_name = "k8smaster01"
  instance_machine_type = "n1-standard-2"
  instance_zone = "europe-west2-a"
  instance_image = "centos-7-v20200205"
  subnet_name = "default"
  external_enabled = "true"
  startup_script = "sudo yum install -y wget && wget https://raw.githubusercontent.com/bharatmicrosystems/ansible-practice/master/scripts/ansible-host.sh && sh ansible-host.sh"
}
