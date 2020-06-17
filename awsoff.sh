#!/bin/bash
#
# AWS流量阈值脚本关机前执行脚本
#
# Copyright (c) 2020.

echo "开始取消自启动"
    rm -rf /etc/rc.d/rc.local
    wget https://github.com/54665/awspro/blob/master/rc.local -O /etc/rc.d/rc.local
echo "开始清空流量统计"
        rm -rf /var/lib/vnstat/eth0
echo "开始创建流量统计"
        vnstat --create -i eth0
		chkconfig vnstat on
        vnstat -u -i eth0
echo "开始关机"
    init 0