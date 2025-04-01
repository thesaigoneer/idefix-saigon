# Idefix Saigon

### Adding nwg-shell to Ublue Sway Atomic

I am always hunting for that immutable nwg-shell install. And if it could be based on Ublue's images that would be even better.

The Universal Blue project (https://universal-blue.org/) provides a number of excellent images to start off with. Bluefin for Gnome, Bazzite for a gaming focus and Aurora as the KDE one.  
They include codecs, printing support, homebrew for all your cli wishes, distrobox etc. out of the box. 

As i've done before I'll roll my own then, based on Ublue's Sway Atomic image. I always use the latest branch, so updates to the latest Fedora will arrive automagically.

### Why adjusting at all?

That's right, those images are already very complete, yet application-wise pretty minimal. Adjusting those images has become much more easy than it was in the first couple of years. And for me there's always some fluff that can be removed.

So, in this image you'll find an Sway Atomic install to which I added:

  -      azote blueman fastfetch hyprland kitty mc micro nwg-shell

And I removed:

  -      firefox foot nvtopx
### Rebase

First install the base iso of Fedora Sway Atomic or another Fedora atomic, like Kinoite , and then:

    rpm-ostree rebase ostree-unverified-registry:ghcr.io/thesaigoneer/idefix-saigon:latest

After that first step:

    systemctl reboot

Log in again and switch to the signed image:

    rpm-ostree rebase ostree-image-signed:docker://ghcr.io/thesaigoneer/idefix-saigon:latest

Finish with:

    systemctl reboot
    
Log in into idefix-saigon!

### First things first

Now you have an Ublue Sway Atomic install, with nwg-shell included. But we'll have to activate that first:

Press Super + P to open rofi, the included application launcher. Choose kitty to get to a terminal. In that terminal type the following and press Enter:

      nwg-shell-installer -a -hypr

Logout out of Sway (Super+Shift+E) and log back in: nwg-shell is now running and ready for use. In SDDM you can also choose the hyprland option and log into that. From now on you can tweak and adjust atomic Sway and Hyprland with nwg-shell. 

Listen. Our base is Fedora, so there's no Flathub enabled ootb. Let's rectify that first:

    flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo 
    
I'd suggest you install a browser of choice to get started. Htop and vim are already included in the Sway Atomic base image.

But all of this is up to the end user (being yourself obviously).

Enjoy your freshly installed Idefix-Saigon!

--------------
### yada yada

Feel free to use these builds and dots. I do not, however, offer or imply any form of support or ongoing maintenance. 

And of course, you use them entirely at your own risk. Have fun!




