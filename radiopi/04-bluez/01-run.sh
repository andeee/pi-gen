install -m 755 files/a2dp-agent "${ROOTFS_DIR}/usr/local/bin/"
install -m 644 files/bt-agent-a2dp.service "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/a2dp-playback.service "${ROOTFS_DIR}/etc/systemd/system/"

on_chroot << EOF
systemctl enable bt-agent-a2dp.service
systemctl enable a2dp-playback.service
EOF
