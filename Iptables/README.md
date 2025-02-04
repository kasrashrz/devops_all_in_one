### My experience through iptables & some important commands

#### iptables commands format

![alt text](./iptables_command_help.png)

```
$ iptables -t <TABLE> <OPTION> <CHAIN_NAME> <MATCH_CRITERIA> -j <TARGET>
$ iptables -t filter -A INPUT -s 192.168.1.1 -j DROP # DROP everything coming from 192.168.1.1
$ iptables -t filter -A INPUT -p tcp --dport 22 -j ACCEPT # Opens ssh for everyone (-p stands for protocol)
```
