#!/bin/sh
# Installs from git repository.

if [ $# -eq 2 ]
then
    if [ "$1" -eq "--bin" ]
    then
        binary="true"
        name="$2"
    else
        echo 'Invalid arguments.'
        exit 1
    fi
else
    binary="false"
    name="$1"
fi

name="$1"
upper_name=$(./bin/upper.py "$name")
bearer="wieczorek1990"

echo -e "\n# ${upper_name}"
mkdir -p "${HOME}/Software/" && \
cd "${HOME}/Software/" && \
rm -rf "$name" && \
git clone --depth=1 git@github.com:${bearer}/${name}.git && \
cd "$name"

if [[ "$binary" == "true" ]]
then
    echo "Installing using script."
    ./bin/install.sh
else
    echo "Installing using Makefile."
    make install
fi

cd - >/dev/null && \
rm -rf "$name"
