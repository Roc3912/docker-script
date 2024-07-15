#!/bin/sh

ip=`ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"|tail -1`
echo "当前主机的ip地址为：${ip}，自动设置brokerIP1，如果获取到的ip不对，请手动修改broker/conf/broker.conf文件"
sed -i 's#localhost#'${ip}'#g' broker/conf/broker.conf

mkdir server/logs -p
mkdir broker/logs -p
mkdir broker/store -p

chown -R 3000.3000 server
chown -R 3000.3000 broker

docker-compose up -d
