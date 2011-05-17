#!/bin/sh

echo "Disabling unneeded system services..."
for SERVICE in $(<disabled-system-services); do
   FILENAME=`basename ${FS_MOUNT_DIR}/etc/rcS.d/S[0-9][0-9]${SERVICE}`
   eval "${SUDO_PFX}mv ${FS_MOUNT_DIR}/etc/rcS.d/${FILENAME} ${FS_MOUNT_DIR}/etc/rcS.d/\#${FILENAME}${SUDO_SFX}" || true
   # Remove any other trace of this service
   eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} update-rc.d -f ${SERVICE} remove${SUDO_SFX}" >/dev/null || true
done

