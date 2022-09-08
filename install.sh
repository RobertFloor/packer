sudo dnf install -y openssh-server
sudo useradd robert
sudo usermod -aG wheel robert 
echo 'AllowUsers robert' >> /etc/ssh/ssh_config
mkdir -p /home/robert/.ssh
sudo chown -R robert:robert /home/robert/
sudo systemctl restart sshd 
echo '%wheel	ALL=(ALL)	NOPASSWD: ALL' >> /etc/sudoers
sudo yum install -y epel-release
sudo dnf install -y ansible
