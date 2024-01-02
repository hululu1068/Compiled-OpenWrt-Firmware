#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part01.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default


# themes添加（svn co 命令意思：指定版本如https://github）
# git clone https://github.com/jerrykuku/luci-theme-argon.git package/custom-package/luci-theme-argon
# git clone https://github.com/esirplayground/luci-theme-atmaterial-ColorIcon.git package/custom-package/luci-theme-atmaterial-ColorIcon
# git clone https://github.com/thinktip/luci-theme-neobird.git package/custom-package/luci-theme-neobird

# 添加额外软件包
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> "feeds.conf.default"

# git clone https://github.com/yichya/luci-app-xray.git package/custom-package/luci-app-xray
# git clone https://github.com/xiechangan123/luci-i18n-xray-zh-cn.git package/custom-package/luci-i18n-xray-zh-cn
# git clone https://github.com/pymumu/smartdns.git package/custom-package/smartdns
# git clone https://github.com/sirpdboy/luci-app-netdata.git package/custom-package/luci-app-netdata

