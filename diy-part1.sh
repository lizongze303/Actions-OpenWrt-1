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
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#git clone https://github.com/MrH723/openwrt-packages.git package/openwrt-packages
sed -i '$a src-git MrH723 https://github.com/MrH723/openwrt-packages' feeds.conf.default

git clone https://github.com/CHN-beta/rkp-ipid package/rkp-ipid

svn checkout https://github.com/openwrt/packages/trunk/libs/libnetfilter-queue package/libs/libnetfilter-queue
git clone https://github.com/Zxilly/UA2F package/UA2F
git clone https://github.com/anomeome/fan_control package/fan_control
