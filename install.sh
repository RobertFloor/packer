sudo dnf install -y openssh-server
sudo useradd robert
sudo usermod -aG wheel robert 
echo 'AllowUsers robert' >> /etc/ssh/ssh_config
mkdir -p /home/robert/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOKlzAfCtGY02266vjIzVnFpPoRbSxGe385llsoAF2L0oXoDYbskYN3MVH8TrdFxGVQB083Vw9Z04mr2IlEP5YfaaolemK/KbxvqQ/uP49Z9HIYvmIswaO+PbCJVSqslbrruaff0QZ9DTtIckinILHJSFFZxu9SOdmjaXs0XBHCPSYuk6gIb/CMc2UQEV9wcbiOB2W4fIts3n7fVJ6YKPsUjzv4yFd7YpJmd1KetQK3ujbV2t/nMIxE8Q3l2rFsaVudCtcY+sRU1Rclp+n/LmbhcYVCFTu/D6KkM5tijKesK736toDI9juNiWDgEBb0mRN4UYNTSAypd5uwnrtQaXEvyKAL+J5AtcCjCu5grzxzhmEZRv/dQFmm8MOjMbk5BLRxL1bzMJhWVYv0/bDvjsgQMLyWinnzV9nmnYWm8TFPCl5k0Vk8OfiLp8mWsNOu1S6+JJuojgBH9pf1CLYdg+yNcynQTuC89ktidqSHlMb8fw2/GsUtyW7o4hXAygc0is= robert@robert-NUC8i5BEH' >> /home/robert/.ssh/authorized_keys
sudo chown -R robert:robert /home/robert/
sudo systemctl restart sshd 
echo '%wheel	ALL=(ALL)	NOPASSWD: ALL' >> /etc/sudoers
sudo yum install -y epel-release
sudo dnf install -y ansible
