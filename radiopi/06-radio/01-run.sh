install -m 644 files/radio.service "${ROOTFS_DIR}/etc/systemd/system/"
install -d ${ROOTFS_DIR}/tmp/radio/
install -m 644 playlists/radio.m3u "${ROOTFS_DIR}/var/lib/mpd/playlists/"
cp -a files/* "${ROOTFS_DIR}/tmp/radio/"

on_chroot << EOF
pip3 install /tmp/radio
systemctl enable radio.service
EOF
