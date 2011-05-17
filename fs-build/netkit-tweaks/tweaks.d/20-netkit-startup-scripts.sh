#!/bin/sh

echo "Installing Netkit startup scripts..."
eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} update-rc.d netkit-phase1 defaults 00 99${SUDO_SFX}" >/dev/null
eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} update-rc.d netkit-phase2 defaults 99 10${SUDO_SFX}" >/dev/null

