#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source

# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# themes添加（svn co 命令意思：指定版本如https://github）
# git clone https://github.com/jerrykuku/luci-theme-argon.git package/custom-package/luci-theme-argon
# git clone https://github.com/esirplayground/luci-theme-atmaterial-ColorIcon.git package/custom-package/luci-theme-atmaterial-ColorIcon
# git clone https://github.com/thinktip/luci-theme-neobird.git package/custom-package/luci-theme-neobird

# 添加额外软件包
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/custom-package/luci-app-adguardhome
git clone -b packages https://github.com/xiaorouji/openwrt-passwall.git package/custom-package/openwrt-passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/custom-package/luci-passwall
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/custom-package/luci-passwall2
git clone --depth=1 https://github.com/fw876/helloworld.git package/custom-package/ssr-plus
# git clone https://github.com/vernesong/OpenClash.git package/custom-package/OpenClash

# git clone https://github.com/yichya/luci-app-xray.git package/custom-package/luci-app-xray
# git clone https://github.com/Mitsuhaxy/luci-i18n-xray-zh-cn.git package/custom-package/luci-i18n-xray-zh-cn
# git clone https://github.com/pymumu/smartdns.git package/custom-package/smartdns
# git clone https://github.com/sirpdboy/luci-app-netdata.git package/custom-package/luci-app-netdata
# git clone https://github.com/kiddin9/luci-app-dnsfilter.git package/custom-package/luci-app-dnsfilter
# git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass
# git clone https://github.com/riverscn/openwrt-iptvhelper.git package/openwrt-iptvhelper

# themes添加（svn co 命令意思：指定版本如https://github）
# git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/custom-package/luci-theme-infinityfreedom
# git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/custom-package/luci-theme-opentomcat
# git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/custom-package/luci-theme-atmaterial


#添加额外非必须软件包
# git clone https://github.com/kenzok8/openwrt-packages.git package/kenzok8-packages
# git clone https://github.com/linkease/istore.git package/custom-package/istore