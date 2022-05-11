# MiniUI Apps - Parasyte

Parasyte is [Steward Fu](https://github.com/steward-fu)'s compatibility layer for Miyoo Mini apps.

Source: https://github.com/steward-fu/miyoo-mini/releases (find `parasyte_<date>.zip`)

## Installation

## Pre-packaged

1. Download the latest version from Github: https://github.com/erazemk/MiniUI-Apps/releases
2. Extract the archive and move the `Parasyte.pak` directory to your SD card,
to the `.system/paks` directory (you might have to enable showing hidden directories if you
don't see the `.system` directory in the root of your SD card)

## Manually packaged

1. Download [Steward Fu's parasyte](https://github.com/steward-fu/miyoo-mini/releases)
(find `parasyte_<date>.zip`)
2. Extract the archive, go into the directory and rename the `parasyte` directory to `2048.pak`
3. Delete the png files and config.json
4. Replace the existing `launch.sh` file with the one from this repository
(https://raw.githubusercontent.com/erazemk/MiniUI-Apps/main/Parasyte.pak/launch.sh)
5. Move the `Parasyte.pak` directory to your SD card, to the `.system/paks` directory
