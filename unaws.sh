#!/bin/bash
#
# AWS流量阈值卸载脚本
#
# Copyright (c) 2020.

echo "正在卸载"
echo "正在取消开机自启"
    rm -rf /etc/rc.d/rc.local
    wget https://raw.githubusercontent.com/54665/awspro/master/rc.local -O /etc/rc.d/rc.local
echo "正在删除脚本配置文件"
	rm -rf /root/.awsll
echo "正在删除定时任务"
    crontab -r
echo "开始重启"
    reboot
