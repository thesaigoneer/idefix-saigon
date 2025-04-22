#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# Enable the necessary COPR's:
dnf5 -y copr enable tofik/sway
dnf5 -y copr enable tofik/golang
dnf5 -y copr enable erikreider/SwayNotificationCenter
dnf5 -y copr enable mochaa/gtk-session-lock
dnf5 -y copr enable tofik/nwg-shell
dnf5 -y copr enable solopasha/hyprland

# Add and remove packages to the image:
dnf5 install -y blueman
dnf5 install -y grimshot
dnf5 install -y hyprland
dnf5 install -y nwg-shell
dnf5 install -y pamixer
dnf5 install -y thunar-volman
dnf5 install -y waypaper
dnf5 install -y wlogout
dnf5 install -y xdg-desktop-portal-gtk
dnf5 install -y zsh
dnf5 install -y zsh-autosuggestions
dnf5 install -y zsh-syntax-highlighting

# installing homebrew stuff
dnf5 group install -y development-tools
dnf5 install -y  procps-ng curl file git

dnf5 remove -y firefox
dnf5 remove -y nvtop

# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging
dnf5 -y copr disable tofik/sway
dnf5 -y copr disable tofik/golang
dnf5 -y copr disable erikreider/SwayNotificationCenter
dnf5 -y copr disable mochaa/gtk-session-lock
dnf5 -y copr disable tofik/nwg-shell


#### Example for enabling a System Unit File

systemctl enable podman.socket
