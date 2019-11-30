on_chroot << EOF
FILE=/usr/local/sbin/LCDd
if [ -f "$FILE" ]; then
    exit
fi
cd /tmp
git clone https://github.com/lcdproc/lcdproc.git
cd lcdproc
sh ./autogen.sh; ./configure --enable-drivers=all --enable-extra-charmaps --enable-lcdproc-menus; make; make install
rm -rf /tmp/lcdproc
EOF

install -m 644 files/LCDd.service "${ROOTFS_DIR}/etc/systemd/system/"

on_chroot << EOF
systemctl enable LCDd.service
EOF
