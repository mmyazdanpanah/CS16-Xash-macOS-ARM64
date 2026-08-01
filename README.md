# CS16-Xash macOS ARM64

Native Counter-Strike 1.6 client for Apple Silicon Macs.

Built with:

- Xash3D FWGS
- cs16-client ARM64
- ReGameDLL_CS
- Apple Silicon dylibs

## Features

- Native ARM64 performance
- Multiplayer support
- LaunchPad application
- macOS launcher
- Persistent player configuration
- Favorite server support

## Runtime Layout

The project uses a separate runtime directory.

Repository:


CS16-Xash-macOS-ARM64/
├── CS16-Xash.app
├── cstrike/
├── scripts/
│ └── start.sh
├── README.md
└── LICENSE


Game runtime:


~/Games/CS16-Xash/
├── xash3d
├── cstrike/
│ ├── config.cfg
│ ├── favorite_servers.lst
│ ├── history_servers.lst
│ └── game files
└── scripts/


Xash3D should be launched from the runtime directory to correctly load user settings, favorites, and configuration files.

## Installation

Copy your legal CS 1.6 game files into:


~/Games/CS16-Xash/cstrike


Build ARM64 libraries from:


https://code.nephatrine.net/QuakeArchive/cs16-client


Required libraries:


cstrike/cl_dlls/client.dylib
cstrike/cl_dlls/menu.dylib
cstrike/dlls/cs.dylib


## Launching

### Using the macOS launcher

Run:


~/Games/CS16-Xash/scripts/start.sh


### Terminal

Alternatively:


cd ~/Games/CS16-Xash
./xash3d -game cstrike


## Troubleshooting

If player name, favorite servers, or configuration settings are missing:

Make sure Xash3D is started from:


~/Games/CS16-Xash


The game reads configuration files relative to its runtime directory.

## Credits

This project is made possible by the work of:

- **Xash3D FWGS**  
  Open-source GoldSrc engine recreation.

- **ReGameDLL_CS**  
  Reverse-engineered Counter-Strike game DLL implementation.

- **cs16-client**  
  Community ARM64 client build support.

- **Valve Software**  
  Original Counter-Strike and GoldSrc engine creators.

This repository does not include original Counter-Strike game assets.

Users must provide their own legally obtained game files.
