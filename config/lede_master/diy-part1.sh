#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 添加 rtp2httpd
sed -i '1i src-git rtp2httpd https://github.com/stackia/rtp2httpd.git;main' feeds.conf.default


# 2. 如果需要屏蔽默认 feed 中同名的冲突包，可使用 src-git-disable 或在 diy-part2.sh 中 rm -rf 清理

# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

