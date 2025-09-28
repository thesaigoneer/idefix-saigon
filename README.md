# Idefix Saigon

### Adding nwg-shell for sway and hyprland to Ublue Sway Atomic

The nwg-shell project aims to create a consistent, GTK3-based user interface for Sway and Hyprland. In order to give the user the greatest possible choice, some interface elements provide several alternative solutions. The shell contains 4 predefined desktop styles, which can be freely modified by the user.

The Universal Blue project (https://universal-blue.org/) provides a number of excellent images to start off with. They include codecs, printing support, homebrew for all your cli wishes, distrobox etc. out of the box. 

#### A big thanks to @nwg-piotr, the maker of nwg-shell. And to @tofik who puts all that in COPR repos so I could apply it to this spin!

As i've done before I'll roll my own, in this case based on Ublue's Sway Atomic image. I always use the latest branch, so updates to the latest Fedora will arrive automagically.

So, in this image you'll find an Sway Atomic install to which I added:

-        Added:                                           Added for Homebrew:
         blueman                                          procps-ng curl file git
         grimshot                                         group development-tools
         hyprland
         niri                                                         
         nwg-shell                                        Removed:
         pamixer
         waybar                                           firefox
         waypaper                                         nvtop
         wlogout                                                          
         zsh, zsh-autosuggestions                                           
  
### Rebase

First install the base iso of Fedora Sway Atomic or another Fedora atomic, like Silverblue , and then:

         rpm-ostree rebase ostree-unverified-registry:ghcr.io/thesaigoneer/idefix-saigon:latest
         systemctl reboot

Log in again and switch to the signed image:

         rpm-ostree rebase ostree-image-signed:docker://ghcr.io/thesaigoneer/idefix-saigon:latest
         systemctl reboot
  
Welcome to Idefix-Saigon!

### First things first:

You now have an Ublue Sway and Hyprland install with nwg-shell included, but we'll have to activate that first:

Login into the Sway session and press Super + D to open rofi, the included application launcher. Choose foot to get to a terminal. In that terminal type the following and press Enter:

      nwg-shell-installer -a -hypr

Logout out of Sway (Super+Shift+E) and log back in: nwg-shell is now running and ready for use. In SDDM you can also choose the hyprland option and log into that. From now on you can tweak and adjust atomic Sway and Hyprland with nwg-shell. 

Our base is Fedora, so there's no Flathub enabled ootb. Let's rectify that first:

    flatpak remote-add flathub https://dl.flathub.org/repo/flathub.flatpakrepo 
    
Htop and vim are already included in the Sway Atomic base image. Both foot and kitty are included in this image; they are both dependencies of the nwg-shell and hyprland packages respectively, so we'll have to manage with two terminals instead of one.

I'd suggest you install a browser of choice to get started. But all of this is up to the end user (being yourself obviously).

My dots and configs for this setup are available on:

      https://codeberg.org/thesaigoneer/idefix-saigon

### Homebrew 

I include all prerequisites for Homebrew in the image right now. So there are no more cli tools included, you can brew them.

First install Homebrew by running this script:

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Closely follow the next steps in the terminal, as stated on-screen after install. The mentioned 'development-tools' are already included in Idefix.

More information about Homebrew can be found at https://brew.sh/


Enjoy your freshly installed Idefix-Saigon!

--------------
### Yada yada

Feel free to use these builds and dots. I do not, however, offer or imply any form of support or ongoing maintenance. 

And of course, you use them entirely at your own risk. Have fun!


21-04-2025

