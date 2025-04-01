# Idefix Saigon

### Adding nwg-shell to Ublue Sericea

I am always hunting for that immutable nwg-shell install. And if it could be based on Ublue's images that would be even better.

The Universal Blue project (https://universal-blue.org/) provides a number of excellent images to start off with. Bluefin for Gnome, Bazzite for a gaming focus and Aurora as the KDE one.  
They include codecs, printing support, homebrew for all your cli wishes, distrobox etc. out of the box. 

As i've done before I'll roll my own then, based on Ublue's Sericea image.

### Why adjusting at all?

That's right, those images are already very complete, yet application-wise pretty minimal. Adjusting those images has become much more easy than it was in the first couple of years. And for me there's always some fluff that can be removed.

So, in this image you'll find an Sericea install to which I added:

  -      nwg-shell hyprland azote rofi-wayland afetch kitty 

And I removed:

  -      exactly nothing
### Rebase

First install the base iso of Sericea or another Fedora atomic, like Kinoite , and then:

    rpm-ostree rebase ostree-unverified-registry:ghcr.io/thesaigoneer/idefix-saigon:latest

After that first step:

    systemctl reboot

Log in again and switch to the signed image:

    rpm-ostree rebase ostree-image-signed:docker://ghcr.io/thesaigoneer/idefix-saigon:latest

Finish with:

    systemctl reboot
    
### Log in into idefix-saigon!

I then removed a number of flatpaks 

    elisa gwenview kmahjongg kmines kolourpaint krdc okular skanpage 
    
Added okular and gwenview as application to my image (I consider a picture viewer and a document reader as core functionality of a DE).

And did a 'brew install' for midnight commander and micro. Htop, fastfetch and vim are already included in the Aurora base image.

But all of this is up to the end user (being yourself obviously).

Enjoy your freshly installed asterix-saigon!

--------------
### yada yada

Feel free to use these builds and dots. I do not, however, offer or imply any form of support or ongoing maintenance. 

And of course, you use them entirely at your own risk. Have fun!




