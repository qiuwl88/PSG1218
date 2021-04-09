#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# 修改机器名称
sed -i "s/OpenWrt/PSG1208/g" package/base-files/files/bin/config_generate

# 设置lan ip
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Modify the version number
# sed -i 's/OpenWrt/Leopard build $(date "+%Y.%m.%d") @ OpenWrt/g' package/default-settings/files/zzz-default-settings

# 添加新的主题包
# git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/lean/luci-theme-opentomcat

# 去除默认主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 修改自带默认主题
sed -i 's/bootstrap/netgear/g' feeds/luci/collections/luci/Makefile
