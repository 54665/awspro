aws达量阈值自动关机脚本

目前流量统计时间为一分钟一次，流量监控为2秒一次，脚本单位1T=1000G，提前一点掐断避免产生大量账单。

使用方法  

yum install wget -y  

apt install wget -y  

wget https://raw.githubusercontent.com/54665/awspro/master/aws.sh  
chmod +x 777 aws.sh  
bash aws.sh  

脚本安装完成后 输入 aws 管理流量统计

 AWS流量阈值副脚本

 1. 查看当天流量
 2. 查看本周流量
 3. 查看当月流量
 4. 刷新统计流量
 5. 清空统计流量
 6. 查看流量监控进程
 7. 开启秒级更新(2秒)

由于需要更新数据库，所以秒级更新需要手动开启，开启后会下载秒级更新脚本运行然后会自启

第一个Github项目望大佬海涵啊。