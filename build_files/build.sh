#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y hyprland

# Use a COPR Example:
#
dnf5 -y copr enable https://copr.fedorainfracloud.org/coprs/tofik/sway/
dnf5 -y copr enable https://copr.fedorainfracloud.org/coprs/tofik/golang/
dnf5 -y copr enable https://copr.fedorainfracloud.org/coprs/erikreider/SwayNotificationCenter/
dnf5 -y copr enable https://copr.fedorainfracloud.org/coprs/mochaa/gtk-session-lock/
dnf5 -y copr enable https://copr.fedorainfracloud.org/coprs/tofik/nwg-shell/
dnf5 -y install nwg-shell
dnf5 -y install azote
dnf5 -y install rofi-wayland
dnf5 -y install kitty
dnf5 -y install afetch

# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging
dnf5 -y copr disable https://copr.fedorainfracloud.org/coprs/tofik/sway/
dnf5 -y copr disable https://copr.fedorainfracloud.org/coprs/tofik/golang/
dnf5 -y copr disable https://copr.fedorainfracloud.org/coprs/erikreider/SwayNotificationCenter/
dnf5 -y copr disable https://copr.fedorainfracloud.org/coprs/mochaa/gtk-session-lock/
dnf5 -y copr disable https://copr.fedorainfracloud.org/coprs/tofik/nwg-shell/


#### Example for enabling a System Unit File

systemctl enable podman.socket
