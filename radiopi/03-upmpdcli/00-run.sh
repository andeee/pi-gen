#!/bin/bash -e

install -m 644 files/upmpdcli.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"

on_chroot apt-key add - < files/upmpdcli.gpg
on_chroot << EOF
apt-get update
EOF
