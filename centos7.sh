#!/bin/bash
#
# Docker定制版centos7启动文件
#
# Copyright (c) 2020.

/usr/sbin/sshd
/etc/init.d/bt restart
/etc/init.d/nginx start