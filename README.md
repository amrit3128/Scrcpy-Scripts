# Scrcpy-Scripts
A collection of some basic scripts that I use to connect and listen to music on my PC from my android phone

> [!CAUTION]
> These scripts have only been tested for the latest stable release of `scrcpy` and `adb` on a Linux and Android device  

### Prerequisites
Install `adb` using your distro's package manager and then download [scrcpy](https://github.com/Genymobile/scrcpy.git) either from your package manager or build it from source

Also your phone and your PC should be connected to same network

## Installation
Either clone the repository or download the scripts individually from the raw file

```git clone https://github.com/Amrit-codes/Scrcpy-Scripts.git```


## Usage
Then find the ip address of your mobile either from the settings menu or by running `ifconfig` in [termux](https://github.com/termux/termux-app.git)
Copy that ip address to the bash scripts.
After that you can run the scripts directly from the cloned directory or put then in the path to access them from anywhere on the command line

[Dunst](https://github.com/dunst-project/dunst.git) can be installed for notifications but is optional

The [phone_connect.sh](phone_connect.sh) connects the device via TCP/IP. For more info read [scrcpy](https://github.com/Genymobile/scrcpy.git) documentation.
The [phone_connect_usb.sh](phone_connect_usb.sh) connects the device via USB. For this you need to have USB Debugging enabled in the developer settings.
The [phone_disconnect.sh](phone_disconnect.sh) disconnects the the connected devices.

## Lisence
[Unlisenced](https://choosealicense.com/licenses/unlicense/)
