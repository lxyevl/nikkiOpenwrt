#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# 纠正为 padavanonly 源码的标准设备代号
echo "CONFIG_TARGET_mediatek=y" >> .config
echo "CONFIG_TARGET_mediatek_filogic=y" >> .config
echo "CONFIG_TARGET_mediatek_filogic_DEVICE_jcg_q30-pro=y" >> .config

# 切除homeproxy和upnp
echo "CONFIG_PACKAGE_luci-app-homeproxy-not=y" >> .config
echo "CONFIG_PACKAGE_sing-box-not=y" >> .config
echo "CONFIG_PACKAGE_luci-app-upnp-not=y" >> .config
echo "CONFIG_PACKAGE_miniupnpd-not=y" >> .config

#  Nikki 
echo "CONFIG_PACKAGE_luci-app-nikki=y" >> .config
echo "CONFIG_PACKAGE_luci-i18n-nikki-zh-cn=y" >> .config
echo "CONFIG_PACKAGE_nikki=y" >> .config
echo "CONFIG_PACKAGE_mihomo=y" >> .config

# 补全透明代理网络驱动
echo "CONFIG_PACKAGE_kmod-nft-tproxy=y" >> .config
echo "CONFIG_PACKAGE_kmod-nft-socket=y" >> .config
echo "CONFIG_PACKAGE_kmod-tun=y" >> .config
