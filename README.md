# Buildroot Project for Minimal Utility Image for Raspberry Pi 4/5

This is a self-contained buildroot project for utility / lab tools on Raspbery Pi 4/5.

Tools include
- [`hostap`](https://hostap.epitest.fi/)/[`dnsmasq`](https://wiki.archlinux.org/title/Dnsmasq) - Operate LAN/Wifi in different modes (access point, or client).
- [`usbip`](https://wiki.archlinux.org/title/USB/IP) - Forward a usb port over the network, useful for serial cables and [`UMS`](https://docs.u-boot.org/en/stable/usage/cmd/ums.html) mode.
- [`openssh`](https://www.openssh.org/) - ssh/sftp server.
- [`ser2net`](https://github.com/cminyard/ser2net) - Forward serial connections over network sockets.
- [`jq`](https://jqlang.org/) - JSON processor designed for command-line.

# Build

> [!IMPORTANT]
> Make sure you checkout with git submodules
> ```sh
> git clone --recurse-submodules https://github.com/RF3-Systems/RPI-Utility-Buildroot.git
> ```
> Or if already cloned, run this in the repo directory:
> ```sh
> git submodule update --init
> ```

Run `make` from the project directory:

```sh
make
```

Or if you want docker

```sh
make docker
```

# Motivation

This is meant to be both serve the real purpose of building its image, but also as an educational/example project. Feel free to fork and modify. I use this for remote setups and will be adding tools I need as I use the image. This is very handy for me, as I can orchestrate multiple networks (WiFi, LAN, + Bluetooth) without using my host machine interfaces. 

# Quick Notes

The design of this comes from these parts of the buildroot manual:

- What is going on with the toplevel [`Makefile`](https://buildroot.org/downloads/manual/manual.html#_custom_top_makefile)?
- What is the [`board`](https://buildroot.org/downloads/manual/manual.html#_implementing_layered_customizations) dir?
- What goes in the [`external tree`](https://buildroot.org/downloads/manual/manual.html#_example_layout)
