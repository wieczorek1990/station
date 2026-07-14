#!/bin/sh
# Updater.

system=$(python3 ./bin/system.py)
echo "Your platform system is $system."

if [[ $system == "Linux" ]]
then
  ./bin/fedora/up.sh
elif [[ $system == "Darwin" ]]
then
  ./bin/macos/up.sh
fi
