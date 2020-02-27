sudo yum list epel-release && sudo yum install -y ansible git &&
echo '[kubernetes-master]
k8smaster[02:50]
[kubernetes-master-leader]
k8smaster01
[kubernetes-worker]
k8sworker[01:50]' | sudo tee -a /etc/ansible/hosts
sudo useradd ansible
sudo su - ansible << EOF
ssh-keygen -t rsa -f /home/ansible/.ssh/id_rsa -q -N ""
EOF
for var in "$@"
do
    sshpass -p "Great@123" ssh-copy-id -o StrictHostKeyChecking=no ansible@${var}
done
