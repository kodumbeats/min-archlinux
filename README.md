# Min Browser for Arch Linux

## Installation
```
git clone git@github.com/kodumbeats/min-archlinux
makepkg
sudo pacman -U min-*.pkg.tar.xz
```
## Uninstallation
**Always investigate shell scripts before use!**
```
chmod +x ./uninstall.sh
./uninstall.sh
```

## Known issues
[ ] Output warns of missing files - this does not affect the success of the installation.

## About
The [community repo](https://github.com/archlinux/svntogit-community/blob/packages/min/trunk/PKGBUILD) was out of date, so it was recreated and updated.
