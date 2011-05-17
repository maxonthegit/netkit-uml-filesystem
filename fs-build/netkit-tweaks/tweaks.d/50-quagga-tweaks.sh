#!/bin/sh

echo "Performing Quagga related tweaks..."
eval "${SUDO_PFX}mkdir -p ${FS_MOUNT_DIR}/var/log/quagga${SUDO_SFX}"
for FILE in /etc/init.d/zebra /etc/zebra /var/log/zebra; do
   eval "${SUDO_PFX}ln -fs quagga ${FS_MOUNT_DIR}/${FILE}${SUDO_SFX}"
done
eval "${SUDO_PFX}chmod 777 ${FS_MOUNT_DIR}/etc/quagga${SUDO_SFX}"

