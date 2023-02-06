---
draft: true
---
# Jetson Camera ROS
## Setting up ROS Core & Camera Stream
Find IP address of machine running roscore, 
run `ifconfig`

`robosub@robosub:~$ ifconfig`

The network adapter should be called something like `eth0` if plugged in via ethernet. If it is connected via wifi, look for `lo` or `wlan0`. 

The IP address will be in the `inet 10.10.69.XXX` scope.

```
robosub@robosub:~$ ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.10.69.11 netmask 255.255.255.0  broadcast 10.10.69.255
        inet6 fe80::5a4c:484:4654:79ca  prefixlen 64  scopeid 0x20<link>
        ether 00:04:4b:8d:92:84  txqueuelen 1000  (Ethernet)
        RX packets 173247  bytes 51097987 (51.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 167814  bytes 1525801743 (1.5 GB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 41
```
The ipv4 address for this machine is `10.10.69.11`.

Note the name of the machine, this can be seen in the portion preceding the command in the terminal.

(ex. `robosub@Jetson` the username is ‘robosub’ and machine name is ‘Jetson’)

Use `vim` to edit the `/etc/hosts` file by using `sudo vim /etc/hosts`

At the bottom of the hosts file add the ip address first, followed by a space and then the machine name

`10.10.69.xxx MachineName`

Quit vim by hittng ‘ESC’ the typing `:wq` (meaning write and quit)

Verify by running `roswtf` you should get nothing in big bad red text so you know you are all set