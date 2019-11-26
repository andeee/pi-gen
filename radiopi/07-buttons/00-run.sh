install -m 644 files/buttonboard.dts "${ROOTFS_DIR}/boot/overlays"

on_chroot << EOF
dtc -I dts -O dtb -o /boot/overlays/buttonboard.dtbo /boot/overlays/buttonboard.dts
EOF
