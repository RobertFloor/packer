```bash
❯ sudo su
[sudo] wachtwoord voor robert:
root@robert-NUC8i5BEH:/home/robert# systemctl reload snap.lxd.daemon
root@robert-NUC8i5BEH:/home/robert# for ipt in iptables iptables-legacy ip6tables ip6tables-legacy; do $ipt --flush; $ipt --flush -t nat; $ipt --delete-chain; $ipt --delete-chain -t nat; $ipt -P FORWARD ACCEPT; $ipt -P INPUT ACCEPT; $ipt -P OUTPUT ACCEPT; done
root@robert-NUC8i5BEH:/home/robert# systemctl reload snap.lxd.daemon
root@robert-NUC8i5BEH:/home/robert# exit
## As user robertfloor
❯ sudo systemctl restart libvirtd.service
❯ sudo systemctl restart snap.lxd.daemon
❯ lxc exec ubuntu-new -- bash
root@ubuntu-new:~# ping www.google.nl
PING www.google.nl (142.250.179.195) 56(84) bytes of data.
64 bytes from ams15s42-in-f3.1e100.net (142.250.179.195): icmp_seq=1 ttl=117 time=6.26 ms
```
