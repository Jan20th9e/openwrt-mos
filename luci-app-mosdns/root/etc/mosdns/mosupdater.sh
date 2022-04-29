#!/bin/bash -e
set -o pipefail
rm -rf  /tmp/mosdns
mkdir /tmp/mosdns
wget https://ghproxy.com/https://raw.githubusercontent.com/Jan20th9e/openwrt-mos/master/luci-app-mosdns/root/etc/mosdns/chinalist.txt -nv -O /tmp/mosdns/chinalist.txt
wget https://ghproxy.com/https://raw.githubusercontent.com/Jan20th9e/openwrt-mos/master/luci-app-mosdns/root/etc/mosdns/gfwlist.txt -nv -O /tmp/mosdns/gfwlist.txt
wget https://ghproxy.com/https://raw.githubusercontent.com/Jan20th9e/openwrt-mos/master/luci-app-mosdns/root/etc/mosdns/geoip.dat -nv -O /tmp/mosdns/geoip.dat
find /tmp/mosdns/* -size -20k -exec rm {} \;
chmod -R  755  /tmp/mosdns
cp -rf /tmp/mosdns/* /etc/mosdns
rm -rf  /tmp/mosdns
exit 0
