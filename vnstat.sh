#!/bin/bash
#
# AWS流量阈值脚本副脚本
#
# Copyright (c) 2020.

echo "开始清空流量统计"
        rm -rf /var/lib/vnstat/eth0
echo "开始创建流量统计"
        vnstat --create -i eth0
		chkconfig vnstat on
        vnstat -u -i eth0
        reboot