# OpenWRT ACI builder

** alpha release **

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
