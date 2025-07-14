# D.I.R.T. example mod

This is an example mod in case you want to create your own dyanmic textures using the D.I.R.T. framework. This repository is using [HEMTT](https://github.com/BrettMayson/HEMTT/) to build.

## Building the mod

Simply run `hemtt build` or `hemtt release` in a CMD window to build the mod.

## Developing

Highly recommended using [Visual Studio Code](https://code.visualstudio.com/) with the `HEMTT` and `SQF Language` (by Armitxes) extension!

To start developing, subscribe to these mods first:

- [CBA_A3](https://steamcommunity.com/workshop/filedetails/?id=450814997)
- [D.I.R.T.](https://steamcommunity.com/sharedfiles/filedetails/?id=3518145984)

Then edit the `script_component.hpp`file and uncomment the `#define DISABLE_COMPILE_CACHE`. this allows you to make SQF changes without needed to restart the game, just restart the mission you are currently previewing in 3den.

And finally, run `hemtt launch` in a CMD window to compile the mod, enable file patching and start the game running CBA and D.I.R.T. and this example mod. The example mod will run in DEV mode then, allowing you change scripts on the fly, making it easy to check if your code works.

## Making your own

You can fork this repository, download it or acquire a copy however you like.

Make sure to search for `compat_blood` in the project and change it to what ever you want, there is also `Blood Compat` around in the project.

Then you are free to make changes how you wish.
