#!/bin/bash -e

install -m 644 files/mopidy.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"

on_chroot apt-key add - < files/mopidy.gpg
on_chroot << EOF
apt-get update
EOF
