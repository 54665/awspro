aws达量阈值自动关机脚本

目前流量统计时间为一分钟一次，脚本更新时间为2秒一次，脚本单位1T=1000G，提前一点掐断避免产生大量账单。

使用方法
wget wget https://raw.githubusercontent.com/54665/awspro/master/aws.sh
chmod 777 aws.sh
bash aws.sh

脚本安装完成后有个副脚本 ll.sh 执行bash ll.sh 可查看和管理流量统计
暂时不考虑合并