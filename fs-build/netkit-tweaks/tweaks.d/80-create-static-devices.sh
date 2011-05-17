#!/bin/sh

echo "Creating some static device nodes..."
# External quotes protect semicolons
# Internal (backslashed) quotes survive shell expansion, and are passed to eval
eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} /bin/sh -c \"cd /dev; /sbin/MAKEDEV ubd; /sbin/MAKEDEV tun\"${SUDO_SFX}"

