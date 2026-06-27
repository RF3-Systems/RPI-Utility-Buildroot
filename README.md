# Buildroot Project for Minimal Utility Image for Raspberry Pi 4/5

This is a self-contained buildroot project for utility / lab tools on Raspbery Pi 4/5.

Tools include
- [`hostap`](https://hostap.epitest.fi/)/[`dnsmasq`](https://wiki.archlinux.org/title/Dnsmasq) - Operate LAN/Wifi in different modes (access point, or client).
- [`usbip`](https://wiki.archlinux.org/title/USB/IP) - Forward a usb port over the network, useful for serial cables and [`UMS`](https://docs.u-boot.org/en/stable/usage/cmd/ums.html) mode
- [`dropbear`](https://matt.ucc.asn.au/dropbear/dropbear.html) - ssh server 
...
Whatever is needed next.

# Build

Run from the project directory:

```sh
./build.sh
```

Or if you want docker

```sh
./docker-setup.sh
docker compose up
```

# Motivation

This is meant to be both serve the real purpose of building its image, but also as an educational/example project.

# External Buildroot Tree

What is going on with the toplevel [`Makefile`](https://buildroot.org/downloads/manual/manual.html#_custom_top_makefile)?
What is the [`board`](https://buildroot.org/downloads/manual/manual.html#_implementing_layered_customizations) dir?

https://buildroot.org/downloads/manual/manual.html#_example_layout
