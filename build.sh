#!/bin/bash

/usr/bin/echo "=========================================FIREWALLSINFO=========================================" > /tmp/gvnklog
/usr/bin/systemctl disable firewalld
/usr/bin/systemctl stop firewalld
/usr/bin/systemctl status firewalld >> /tmp/gvnklog
/usr/sbin/iptables -F
/usr/sbin/sestatus >> /tmp/gvnklog

/usr/bin/echo "=========================================HOSTNAME SETUP========================================" >> /tmp/gvnklog
/usr/bin/echo "gvnk154.ashok.ins.com" > /etc/hostname
/usr/bin/echo "192.168.0.154	gvnk154.ashok.ins.com	server1" > /etc/hosts
/usr/bin/cat /etc/hostname >> /tmp/log
/usr/bin/cat /etc/hosts >> /tmp/gvnklog

/usr/bin/echo "=========================================NETWORK SETUP================================" >> /tmp/gvnklog
/usr/sbin/ifconfig -a >> /tmp/gvnklog

/usr/bin/echo "=========================================SYSTEM INFO============================================" >> /tmp/gvnklog
/usr/sbin/parted -l >> /tmp/gvnklog
/usr/bin/netstat -rn >> /tmp/gvnklog
/usr/bin/df -h >> /tmp/gvnklog
/usr/bin/uptime >> /tmp/gvnklog
/usr/bin/uname >> /tmp/gvnklog

/usr/bin/echo "=========================================USER INFO==============================================" >> /tmp/gvnklog
/usr/bin/cat /etc/passwd >> /tmp/gvnklog
/usr/bin/cat /etc/shadow >> /tmp/gvnklog
/usr/bin/cat /etc/group >> /tmp/gvnklog
##################################################################################################################################################################################################################################################3#myself rajireddy 
i am learning course on linux and aws
also learning ancible and git
im living in hyderabad
i am also working in cognizant
