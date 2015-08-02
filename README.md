# OpenWRT ACI builder

*alpha release*

Build an App Container image (aci) from the latest development snapshot of
OpenWRT.

By default this creates an x86_64 image, but you can edit the URL of the rootfs
and arch to use in the Makefile

## Instructions

    # download the OpenWRT rootfs
    make 

    # enter the container (requires systemd-nspawn)
    make enter

    # build the aci from rootfs
    make build

## Gotchas

1. By default `/var` is linked to `/tmp`

2. opkg (the OpenWRT package installer) is working, but requires the `/var/lock`
   directory to exist. You can mkdir it yourself, but will be lost on reboot
   (see gotcha #1)

## What can I do with it?

I've created this to experiment with a Python-based aci. Build the rootfs, enter
it, and run

    opkg update
    opkg install python-pip
    pip install whatever

then export it with

    make build

It can also be used as a minimal layer for any app that requires some kind of
basic OS infrastructure (i.e. anything that is not a statically linked binary)
