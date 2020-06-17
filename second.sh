#!/bin/bash
#
# AWS流量秒级更新脚本
#
# Copyright (c) 2020.
while [ true ]
do
/bin/sleep 2
date 

/root/.awsll/refresh.sh

done