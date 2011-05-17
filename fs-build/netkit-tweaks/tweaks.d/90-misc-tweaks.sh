#!/bin/sh

echo "Applying other miscellaneous tweaks..."
eval "${SUDO_PFX}ln -s bind9 ${FS_MOUNT_DIR}/etc/init.d/bind${SUDO_SFX}"
eval "${SUDO_PFX}ln -s openbsd-inetd ${FS_MOUNT_DIR}/etc/init.d/inetd${SUDO_SFX}"

# Use vi to provide view
eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} update-alternatives --list view${SUDO_SFX}" | awk '/vim.basic/ {print NR}' | eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} update-alternatives --config view${SUDO_SFX}" >/dev/null 2>&1

# Build a locate DB
eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} updatedb --prunefs= ${SUDO_SFX}"

eval "${SUDO_PFX}cp ../../netkit-filesystem-version ${FS_MOUNT_DIR}/etc${SUDO_SFX}"

eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} update-exim4.conf ${SUDO_SFX}"

