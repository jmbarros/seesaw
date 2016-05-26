#!/bin/bash
#script by jmbarros at tech4it.com.br




#update
apt-get update

modprobe ip_vs
modprobe nf_conntrack_ipv4
modprobe dummy numdummies=1

echo options ip_vs > /etc/modprobe.d/ip_vs.conf
echo options nf_conntrack_ipv4 > /etc/modprobe.d/nf_conntrack_ipv4.conf
echo options dummy numdummies=1 > /etc/modprobe.d/dummy.conf