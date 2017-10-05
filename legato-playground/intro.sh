#! /bin/sh

docker run --rm \
           -ti \
           --env OPT_KVM=1 \
           quay.io/legato/virt-x86
