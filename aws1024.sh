#!/bin/bash
#
# AWS流量阈值脚本1024版直通型
#
# Copyright (c) 2020.
   
   echo "开始安装依赖"
	echo "安装依赖"
		yum install wget -y
		yum install epel-release -y
		yum install wget vnstat -y
		apt-get install wget -y
		apt-get install epel-release -y
		apt-get install vnstat -y
		service vnstat start
		vnstat --create -i eth0
		chkconfig vnstat on
		vnstat -u -i eth0
		mkdir /root/.awsll/
		wget https://raw.githubusercontent.com/54665/awspro/master/vnstat.sh -O /root/.awsll/vnstat.sh
		chmod +x /root/.awsll/vnstat.sh
		wget https://raw.githubusercontent.com/54665/awspro/master/awsoff.sh -O /root/.awsll/awsoff.sh
		chmod +x /root/.awsll/awsoff.sh
	echo "正在下载1T版脚本"
	    wget https://raw.githubusercontent.com/54665/awspro/master/aws1024.py -O /root/.awsll/aws1024.py
	    chmod +x /root/.awsll/aws1024.py
	    nohup python /root/.awsll/aws1024.py >> /dev/null 2>&1 &
	echo "正在添加定时任务"
	    crontab -l > "$file_1/crontab.bak"
        sed -i "/vnstat -u -i eth0/d" "$file_1/crontab.bak"
        sed -i "/vnstat.sh/d" "$file_1/crontab.bak"
        echo -e "\n*/1 * * * *  /usr/bin$file_1/vnstat -u -i eth0" >> "$file_1/crontab.bak"
        echo -e "\n0 4 1 jan *  /root/.awsll$file_1/vnstat.sh" >> "$file_1/crontab.bak"
        crontab "$file_1/crontab.bak"
        rm -r "$file_1/crontab.bak"
        cron_config=$(crontab -l | grep "vnstat -u -i eth0")
        cron_config=$(crontab -l | grep "vnstat.sh")
    echo "正在添加自启任务"
        wget https://raw.githubusercontent.com/54665/awspro/master/aws1024-zq.sh -O /root/.awsll/aws1024-zq.sh
        chmod +x /root/.awsll/aws1024-zq.sh
	    chmod +x /etc/rc.d/rc.local
	    echo "/root/.awsll/aws1024-zq.sh >/root/.awsll/aws1024.py.log 2>&1" >> /etc/rc.d/rc.local
	    echo "正在下载管理脚本"
       wget https://raw.githubusercontent.com/54665/awspro/master/ll.sh
       chmod +x ll.sh
       echo "安装完成，请输入 bash ll.sh 管理流量统计"