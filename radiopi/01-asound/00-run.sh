#!/bin/bash -e

install -d "${ROOTFS_DIR}/etc/alsa/conf.d/"
install -m 644 files/10-mono.conf "${ROOTFS_DIR}/etc/alsa/conf.d/"
