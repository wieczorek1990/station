#!/bin/sh
# Installs from git repository.

name=$1
upper_name=$(./bin/upper.py $name)

echo -e "\n# $upper_name"
mkdir -p ~/Software/ && \
cd ~/Software/ && \
rm -rf $name && \
git clone --depth=1 git@github.com:wieczorek1990/$name.git && \
cd $name && \
make install && \
cd -
