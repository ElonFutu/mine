#!/bin/bash

# 检查是否以root用户运行脚本
if [ "$(id -u)" != "0" ]; then
    echo "此脚本需要以root用户权限运行。"
    echo "请尝试使用 'sudo -i' 命令切换到root用户，然后再次运行此脚本。"
    exit 1
fi

nohup /root/xelis-taxminer --wallet xel:w2ta8au79jejkcjfqrd08jdm0hhcsuh3a3drrrdc3j5wtvxr7czsqeeateh --host 192.168.111.51:8080 --boot --display-hs-all --worker taxminer >/root/xelis_taxminer-`date +%Y-%m-%d`.log  2>&1 &

echo "[`date '+%Y-%m-%d %H:%M:%s'`] xelis_taxminer started"