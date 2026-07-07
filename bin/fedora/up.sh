#!/bin/sh
# Updates Fedora.
# Run this as root.

echo "Starting update."
dnf upgrade --refresh --assumeyes
echo "Done update."

echo "Starting reboot test."
dnf needs-restarting
status=$?
echo "Finished reboot test."
# status 0 is no restart
if [ $status -ne 0 ]
then
  echo "Exiting with reboot."
  reboot
  exit 0
fi

echo "Exiting without reboot."
