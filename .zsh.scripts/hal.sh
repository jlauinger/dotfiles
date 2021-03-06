#!/bin/bash

## written by Mark Lee <bluerider>
## using information from 
##<https://wiki.archlinux.org/index.php/Chromium#Google_Play_.26_Flash>

## Start and stop Hal service on command for Google Play Movie service

function main () {  ## run the main insertion function
     clear-cache;  ## remove adobe cache
     start-hal;  ## start the hal daemon
     read -p "Press 'enter' to stop hal";  ## pause the command line with a read line
     stop-hal;  ## stop the hal daemon
}

function clear-cache () {  ## remove adobe cache
     cd ~/.adobe/Flash_Player;  ## go to Flash player user directory
     rm -rf NativeCache AssetCache APSPrivateData2;  ## remove cache
}

function start-hal () {  ## start the hal daemon
     sudo systemctl start hal.service && ( ## systemd : start hal daemon
          echo "Started hal service..."
) || (
          echo "Failed to start hal service!") 
}

function stop-hal () {  ## stop the hal daemon
sudo systemctl stop hal.service && (  ## systemd : stop hal daemon
          echo "Stopped hal service..."
     ) || (
          echo "Failed to stop hal service!"
     )
}

main;  ## run the main insertion function

