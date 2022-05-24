# MiniUI Apps - NBlood

This is a port of nukeykt's NBlood, a wrapper for the game Blood (1.21), repacked for MiniUI. 

More information at [nukeykt's repository](https://github.com/nukeykt/NBlood).

## Screenshots
|                 Main menu                 |                 In-game                 |
|:-----------------------------------------:|:---------------------------------------:|
|![Nblood_001](https://user-images.githubusercontent.com/97309764/170036035-f3382870-002d-4386-bc54-f45e5926201f.png)|![Nblood_000](https://user-images.githubusercontent.com/97309764/170036086-5815fcb5-02a0-406d-a3ee-16dc19786006.png)|



## Installation

**Since NBlood is a standalone app, it will NOT be auto-saved when you shut down your Mini,
you alone are responsible for saving progress!**

Save files are stored in `Tools/NBlood.pak/`.

1. Download the latest version from Github: https://github.com/erazemk/MiniUI-Apps/releases
2. Extract the archive.
3. Copy the following files from the original game folder to the `NBlood.pak` folder:

   - BLOOD.INI
   - BLOOD.RFF
   - BLOOD000.DEM, ..., BLOOD003.DEM (optional)
   - CP01.MAP, ..., CP09.MAP (optional, Cryptic Passage)
   - CPART07.AR_ (optional, Cryptic Passage)
   - CPART15.AR_ (optional, Cryptic Passage)
   - CPBB01.MAP, ..., CPBB04.MAP (optional, Cryptic Passage)
   - CPSL.MAP (optional, Cryptic Passage)
   - CRYPTIC.INI (optional, Cryptic Passage)
   - CRYPTIC.SMK (optional, Cryptic Passage)
   - CRYPTIC.WAV (optional, Cryptic Passage)
   - GUI.RFF
   - SOUNDS.RFF
   - SURFACE.DAT
   - TILES000.ART, ..., TILES017.ART
   - VOXEL.DAT

   - Optional: if you want to use CD audio tracks instead of MIDI, provide FLAC/OGG recordings in following format: bloodXX.flac/ogg, 
where XX is track number. Make sure to enable Redbook audio option in sound menu.
   - Optional: if you want cutscenes and you have the original CD, copy the movie folder into NBlood's folder (the folder itself too). 

     - If you have the GOG version of the game, do the following:

       - make a copy of game.ins (or game.inst) named game.cue
       - mount the .cue as a virtual CD (for example with WinCDEmu)
       - copy the movie folder from the mounted CD into NBlood's folder


4. Move the `NBlood.pak` directory to your SD card, to the `Tools` directory (create it if it doesn't exist already).
