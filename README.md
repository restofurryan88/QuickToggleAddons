# QuickToggleAddons
Game Version: 8.2 (BfA)

For a quick way to toggle on/off a list of addons in-game. This addon will help quickly turn off, say, a list of memory hogs before starting raid. Then you can turn them back on.

## Setup
* Clone / download this repo
* Copy the "QuickToggleAddons" folder into your World of Warcraft/_retail_/Interface/Addons folder
* Start your game to load addons
* Edit the main.lua file and /reload ui to update it for your list of addons in the qtaAddonList variable.

You can use the CopyToAddonFolder.ps1 file to copy the newest files into your addons directory. You can override the default Addons directory path using the -addonsFolderPath parameter when running the script.

## How to Use
* Use the slash commmand /qta "on" to toggle on or "off" to go off.
> /qta on

Once you have done this, it will /reload ui for you.

#Debugging
You can edit the main.lua file to set the qtaIsDebugging variable to true to see some messages print out to help with debugging.