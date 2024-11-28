#!/bin/bash
cd openwrt
cat >> .config <<EOF
CONFIG_TARGET_armsr=y
CONFIG_TARGET_armsr_armv8=y
CONFIG_TARGET_armsr_armv8_DEVICE_generic=y
CONFIG_TARGET_ROOTFS_INITRAMFS=n
CONFIG_TARGET_ROOTFS_CPIOGZ=n
CONFIG_TARGET_ROOTFS_EXT4FS=n
CONFIG_TARGET_ROOTFS_SQUASHFS=n

# ipv6
CONFIG_PACKAGE_ipv6helper=y

# kmod
CONFIG_PACKAGE_kmod-amazon-ena=n
CONFIG_PACKAGE_kmod-ata-ahci=y
CONFIG_PACKAGE_kmod-atlantic=n
CONFIG_PACKAGE_kmod-bcmgenet=n
CONFIG_PACKAGE_kmod-dwmac-imx=n
CONFIG_PACKAGE_kmod-dwmac-rockchip=n
CONFIG_PACKAGE_kmod-dwmac-sun8i=n
CONFIG_PACKAGE_kmod-e1000e=n
CONFIG_PACKAGE_kmod-fsl-dpaa1-net=n
CONFIG_PACKAGE_kmod-fsl-dpaa2-net=n
CONFIG_PACKAGE_kmod-fsl-enetc-net=n
CONFIG_PACKAGE_kmod-fsl-fec=n
CONFIG_PACKAGE_kmod-gpio-pca953x=n
CONFIG_PACKAGE_kmod-i2c-mux-pca954x=n
CONFIG_PACKAGE_kmod-mvneta=n
CONFIG_PACKAGE_kmod-mvpp2=n
CONFIG_PACKAGE_kmod-octeontx2-net=n
CONFIG_PACKAGE_kmod-phy-aquantia=n
CONFIG_PACKAGE_kmod-phy-broadcom=n
CONFIG_PACKAGE_kmod-phy-marvell=n
CONFIG_PACKAGE_kmod-phy-marvell-10g=n
CONFIG_PACKAGE_kmod-rtc-rx8025=n
CONFIG_PACKAGE_kmod-sfp=n
CONFIG_PACKAGE_kmod-thunderx-net=n
CONFIG_PACKAGE_kmod-usb2=y
CONFIG_PACKAGE_kmod-vmxnet3=n
CONFIG_PACKAGE_kmod-wdt-sp805=n
CONFIG_PACKAGE_luci-lib-taskd=y
CONFIG_PACKAGE_kmod-fast-classifier=y
CONFIG_PACKAGE_kmod-shortcut-fe-cm=y
CONFIG_PACKAGE_kmod-shortcut-fe-drv=y
CONFIG_PACKAGE_iptables-mod-tproxy=y
CONFIG_PACKAGE_kmod-ipt-tproxy=y
CONFIG_PACKAGE_kmod-nf-tproxy=y
CONFIG_PACKAGE_kmod-nft-tproxy=y
CONFIG_PACKAGE_kmod-tun=y
# luci
CONFIG_PACKAGE_luci-app-amlogic=y
CONFIG_PACKAGE_luci-theme-argon=y
CONFIG_PACKAGE_luci-app-argon-config=y
CONFIG_PACKAGE_luci-app-diskman=y
CONFIG_PACKAGE_luci-app-openclash=y
CONFIG_PACKAGE_luci-app-dockerman=y
CONFIG_PACKAGE_luci-app-netdata=y
CONFIG_PACKAGE_luci-app-passwall=y
#CONFIG_PACKAGE_luci-app-transmission=y
CONFIG_PACKAGE_luci-app-store=y
CONFIG_PACKAGE_luci-app-poweroff=y
CONFIG_PACKAGE_luci-app-hd-idle=y
CONFIG_PACKAGE_luci-app-mihomo=y
CONFIG_PACKAGE_luci-app-passwall2=y
CONFIG_PACKAGE_openssh-sftp-server=y
CONFIG_PACKAGE_luci-app-advanced=y
CONFIG_PACKAGE_luci-app-turboacc=y
# other packages
CONFIG_PACKAGE_docker-compose=y
CONFIG_PACKAGE_autocore=y
CONFIG_PACKAGE_fstrim=y
CONFIG_PACKAGE_ppp=n
CONFIG_PACKAGE_zoneinfo-asia=y
# necessary
CONFIG_BTRFS_PROGS_ZSTD=y
CONFIG_PACKAGE_attr=y
CONFIG_PACKAGE_bash=y
CONFIG_PACKAGE_bsdtar=y
CONFIG_PACKAGE_btrfs-progs=y
CONFIG_PACKAGE_chattr=y
CONFIG_PACKAGE_f2fs-tools=y
CONFIG_PACKAGE_fdisk=y
CONFIG_PACKAGE_gawk=y
CONFIG_PACKAGE_getopt=y
CONFIG_PACKAGE_lsattr=y
CONFIG_PACKAGE_perl=y
CONFIG_PACKAGE_perlbase-getopt=y
CONFIG_PACKAGE_perlbase-unicode=y
CONFIG_PACKAGE_perl-http-date=y
CONFIG_PACKAGE_pigz=y
CONFIG_PACKAGE_tar=y
CONFIG_PACKAGE_xfs-fsck=y
CONFIG_PACKAGE_xfs-mkfs=y

# remove wifi
CONFIG_PACKAGE_hostapd-common=y
CONFIG_PACKAGE_iw=y
CONFIG_PACKAGE_kmod-brcmfmac=y
CONFIG_PACKAGE_kmod-brcmutil=y
CONFIG_PACKAGE_kmod-cfg80211=y
CONFIG_PACKAGE_kmod-mac80211=y
CONFIG_PACKAGE_wpa-cli=y
CONFIG_PACKAGE_wpad-basic=y

EOF
