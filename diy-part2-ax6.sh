#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP and password
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate

# 修改连接数
# sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=65535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
# 修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

# 修改时区
sed -i "s/UTC/CST-8/g" package/base-files/files/bin/config_generate

# themes添加（svn co 命令意思：指定版本如https://github）
git clone https://github.com/jerrykuku/luci-theme-argon.git package/custom-package/luci-theme-argon
git clone https://github.com/esirplayground/luci-theme-atmaterial-ColorIcon.git package/custom-package/luci-theme-atmaterial-ColorIcon
git clone https://github.com/thinktip/luci-theme-neobird.git package/custom-package/luci-theme-neobird

# 添加额外软件包
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/custom-package/luci-app-adguardhome
git clone -b packages https://github.com/xiaorouji/openwrt-passwall.git package/custom-package/openwrt-passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/custom-package/luci-passwall
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/custom-package/luci-passwall2
git clone --depth=1 https://github.com/fw876/helloworld.git package/custom-package/ssr-plus
git clone https://github.com/vernesong/OpenClash.git package/custom-package/OpenClash

# git clone https://github.com/yichya/luci-app-xray.git package/custom-package/luci-app-xray
# git clone https://github.com/Mitsuhaxy/luci-i18n-xray-zh-cn.git package/custom-package/luci-i18n-xray-zh-cn
# git clone https://github.com/pymumu/smartdns.git package/custom-package/smartdns
# git clone https://github.com/sirpdboy/luci-app-netdata.git package/custom-package/luci-app-netdata

# 添加核心温度的显示
sed -i 's|pcdata(boardinfo.system or "?")|luci.sys.exec("uname -m") or "?"|g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
sed -i 's/or "1"%>/or "1"%> ( <%=luci.sys.exec("expr `cat \/sys\/class\/thermal\/thermal_zone0\/temp` \/ 1000") or "?"%> \&#8451; ) /g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm

# Modify NTP Server
sed -i "s/0.openwrt.pool.ntp.org/ntp.aliyun.com/g" package/base-files/files/bin/config_generate
sed -i "s/1.openwrt.pool.ntp.org/cn.ntp.org.cn/g" package/base-files/files/bin/config_generate
sed -i "s/2.openwrt.pool.ntp.org/cn.pool.ntp.org/g" package/base-files/files/bin/config_generate
