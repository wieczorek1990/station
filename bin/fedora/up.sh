#!/bin/sh
# Updates Fedora.

echo "Starting update."
sudo dnf upgrade --refresh --assumeyes
echo "Done update."

echo "Starting reboot test."
dnf needs-restarting
# 0 is no restart
if [ $? -ne 0 ]
then
  echo "Exiting with reboot."
  reboot
  exit 0
fi

echo "Exiting without reboot."
