#!/bin/sh

echo "Performing OpenVPN related tweaks..."
eval "${SUDO_PFX}mkdir -p ${FS_MOUNT_DIR}/var/log/openvpn${SUDO_SFX}"
eval "${SUDO_PFX}mkdir -p ${FS_MOUNT_DIR}/etc/openvpn/clients${SUDO_SFX}"

