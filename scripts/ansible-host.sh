sudo useradd ansible
echo "Great@123" | passwd ansible --stdin
echo 'ansible ALL=(ALL) NOPASSWD: ALL' | sudo tee -a /etc/sudoers
