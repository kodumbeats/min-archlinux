# Min Browser for Arch Linux

## Installation
```
git clone git@github.com/kodumbeats/min-archlinux
cd min-archlinux
makepkg
sudo pacman -U min-*.pkg.tar.xz
```
## Uninstallation
[friends don't let friends curl bash](https://sysdig.com/blog/friends-dont-let-friends-curl-bash/)
```
chmod +x ./uninstall.sh
./uninstall.sh
```

## Known issues
[ ] Output warns of missing files - this does not affect the success of the installation.

## About
The [community repo](https://github.com/archlinux/svntogit-community/blob/packages/min/trunk/PKGBUILD) was out of date, so it was recreated and updated.
