#!/bin/sh

echo "Configuring standard Netkit users..."
eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} useradd --system quagga${SUDO_SFX}"
eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} useradd -m -p nlbMnI.VQBS3s guest" # nlbMnI.VQBS3s is the
                                                                           # encrypted version of
                                                                           # "guest", and has been
                                                                           # obtained using
                                                                           # `htpasswd -nd guest'
eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} usermod -p jUKgiPbkhBi1A root"     # "root"

