sudo useradd ansible
sudo sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
systemctl restart sshd
echo "Great@123" | passwd ansible --stdin
echo 'ansible ALL=(ALL) NOPASSWD: ALL' | sudo tee -a /etc/sudoers
