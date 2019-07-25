#!/bin/bash
set -e

version=4.1.0
appname=Ultimaker_Cura

which wget 2>&1 > /dev/null

if [[ "$?" -ne 0 ]]; then
    echo "Please install `wget` or ensure it is in your path and re-run to continue."
    exit 1
fi

if [[ ! -d "build" ]]; then
    mkdir build
fi

cd build

rm -f $appname-$version.MT.AppImage

if [[ ! -f "$appname-$version.AppImage" ]]; then
    wget https://github.com/Ultimaker/Cura/releases/download/$version/$appname-$version.AppImage
    chmod +x $appname-$version.AppImage
fi

if [[ ! -f "appimagetool-x86_64.AppImage" ]]; then
    wget https://github.com/AppImage/AppImageKit/releases/download/12/appimagetool-x86_64.AppImage
    chmod +x appimagetool-x86_64.AppImage
fi

echo "Mounting to extract Cura AppImage, sudo password may be required."

mkdir tmproot

sudo mount $appname-$version.AppImage tmproot

cp -r tmproot/ $appname-$version

sudo umount tmproot

rmdir tmproot

cp -r ../resources/* $appname-$version/usr/bin/resources/

appimagetool-x86_64.AppImage $appname-$version $appname-$version.MT.AppImage

chmod +x $appname-$version.MT.AppImage

rm -rf $appname-$version/

echo
echo
echo "Build complete, build/$appname-$version.MT.AppImage created"

