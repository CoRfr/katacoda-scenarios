#!/bin/bash

# Prefetch virtual image
docker pull quay.io/legato/virt-x86 &

# Make repo available
mkdir -p $HOME/bin
curl -o $HOME/bin/repo https://storage.googleapis.com/git-repo-downloads/repo
chmod +x $HOME/bin/repo

export PATH=$HOME/bin:$PATH

# Checkout legato
mkdir -p workspace
cd workspace
repo init -u git://github.com/legatoproject/manifest
repo sync

