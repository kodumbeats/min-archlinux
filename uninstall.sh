#!/bin/bash
echo "cleaning build folder"
rm min-*.pkg.tar.xz
rm -r src/
rm -r min/
rm -r pkg/

echo "removing the installed files: "
echo "/usr/bin/min"
echo "/usr/share/applications/min.desktop"
echo "/usr/lib/min"
echo "/usr/share/icons/hicolor/256x256/apps/min.png"
echo "and I need root access for this"
sudo rm /usr/bin/min
sudo rm  /usr/share/applications/min.desktop
sudo rm -r /usr/lib/min/
sudo rm -r /usr/share/icons/hicolor/256x256/apps/min.png 
