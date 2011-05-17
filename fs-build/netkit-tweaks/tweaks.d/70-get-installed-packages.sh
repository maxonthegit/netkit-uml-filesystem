#!/bin/sh

echo "Producing list of installed packages..."
# External quotes protect semicolons
# Internal (backslashed) quotes survive shell expansion, and are passed to eval
eval "${SUDO_PFX}chroot ${FS_MOUNT_DIR} dpkg-query --show --showformat \"\\\${Status;-30} \\\${Package;-40} \\\${Version;-30} \\\${Architecture;-7} \\\${Description;-5000}###\"${SUDO_SFX}" | tr '\n' ' ' | sed 's/###/\n/g' > ../../installed-packages-${SUBARCH}-${NK_FS_RELEASE}
ln -fs installed-packages-${SUBARCH}-${NK_FS_RELEASE} ../../installed-packages

