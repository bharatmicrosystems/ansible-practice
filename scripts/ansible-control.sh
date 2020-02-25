sudo yum list epel-release && sudo yum install -y ansible git &&
echo '[kubernetes-master]
k8smaster[02:50]
[kubernetes-master-leader]
k8smaster01
[kubernetes-worker]
k8sworker[01:50]' | sudo tee -a /etc/ansible/hosts
