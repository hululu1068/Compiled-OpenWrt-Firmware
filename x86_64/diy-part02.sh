#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part02.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)



# Modify default IP and password
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate

# 修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

# 修改时区
# sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate

# Modify NTP Server
# sed -i "s/0.openwrt.pool.ntp.org/ntp.aliyun.com/g" package/base-files/files/bin/config_generate
# sed -i "s/1.openwrt.pool.ntp.org/cn.ntp.org.cn/g" package/base-files/files/bin/config_generate
# sed -i "s/2.openwrt.pool.ntp.org/cn.pool.ntp.org/g" package/base-files/files/bin/config_generate

# Add UPX
# cd ~/work/Compiled-OpenWrt-Firmware/Compiled-OpenWrt-Firmware/tools/upx-3.96-amd64_linux
# sudo chmod +x upx
# sudo cp ./upx ~/work/Compiled-OpenWrt-Firmware/Compiled-OpenWrt-Firmware/openwrt/staging_dir/host/bin/