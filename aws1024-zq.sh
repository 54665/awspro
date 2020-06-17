#!/bin/bash
#
# AWS流量阈值脚本1024版自启脚本
#
# Copyright (c) 2020.

nohup python /root/.awsll/aws1024.py >> /dev/null 2>&1 &
echo "执行完毕"