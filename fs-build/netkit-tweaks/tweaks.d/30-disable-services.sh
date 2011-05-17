#!/bin/sh

echo "Disabling unneeded services..."
for SERVICE in $(<disabled-services); do
   eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} update-rc.d -f ${SERVICE} remove${SUDO_SFX}" >/dev/null
done

