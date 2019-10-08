# makertech-cura

**This is unofficial and not endorsed by Makertech or Ultimaker**

This repository contains a simple script and the Makertech resources required to repackage a Cura image with the ProForge support. It is aimed at Linux support, as both Windows and MacOS have full support at https://www.makertech3d.com/pages/downloads

Cura 4+ don't appear to work with the resources - you'll see "Profile: Not Supported" for the nozzle/layer resolution settings. Fixes welcome.

Pre-requisites:

- wget
- sudo (for mount/unmount)

As the Cura images appear to be AppImage v1 mount is required to extract the contents. See build.sh if concerned ;-)

## Bundled resources

The bundled `resources` are taken from Windows Makertech Cura 3.6.2

If you spot updates that can be made please feel free to create a PR

# Copyright etc

All copyrights and trademarks belong to their respective owners.

Ultimaker Cura v3.1+ is provided under the LGPLv3.

The `build.sh` script is freely available for anyone to use or modify without any restriction, though no warranty or suitability or fitness for any use is given.

The ProForge/Makertech resources were created by Makertech and are provided open source.
