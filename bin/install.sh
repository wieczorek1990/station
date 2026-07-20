#!/bin/sh
# Installs from git repository.

name=$1
upper_name=$(./bin/upper.py $name)
bearer=wieczorek1990

echo -e "\n# $upper_name"
mkdir -p ~/Software/ && \
cd ~/Software/ && \
rm -rf $name && \
git clone --depth=1 https://github.com/$bearer/$name.git && \
cd $name && \
make install && \
cd - && \
rm -rf $name
