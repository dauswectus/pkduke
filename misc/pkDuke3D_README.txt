    $$$$$$$$               /KK      /DDDDDDD          /KK                /333333 /DDDDDDD       $$$$$$$$     
  $$ $$$$$$ $$            | KK     | DD__  DD        | KK               /33__  3| DD__  DD    $$ $$$$$$ $$   
 $    $$$$    $    /PPPPPP| KK   /K| DD  \ DD/UU   /U| KK   /KK /EEEEEE|__/  \ 3| DD  \ DD   $    $$$$    $  
$      $$      $  /PP__  P| KK  /KK| DD  | D| UU  | U| KK  /KK//EE__  EE  /33333| DD  | DD  $      $$      $ 
$$$$$$ $$ $$$$$$ | PP  \ P| KKKKKK/| DD  | D| UU  | U| KKKKKK/| EEEEEEEE |___  3| DD  | DD  $$$$$$ $$ $$$$$$ 
 $$$$$    $$$$$  | PP  | P| KK_  KK| DD  | D| UU  | U| KK_  KK| EE_____//33  \ 3| DD  | DD   $$$$$    $$$$$  
  $$$      $$$   | PPPPPPP| KK \  K| DDDDDDD|  UUUUUU| KK \  K|  EEEEEE|  333333| DDDDDDD/    $$$      $$$   
    $$$$$$$$     | PP____/|__/  \__|_______/ \______/|__/  \__/\_______/\______/|_______/       $$$$$$$$     
                 | PP                                                                                        
                 | PP                                                     (Version 1.2 RC)                      
                 |__/                                                                                        


  Thanks for downloading and installing pkDuke3D! :)
  
  This major release candidate (1.2 RC) fixes a number of bugs.
  Most notable fixes are for a variety of stability bugs that were carried over from Megaton 1.3.2 and its ancestor jfDuke3D.
  Bugs fixed include:
   +fixed cutscene crash that occured after cutscenes were played enough times in a session (caused by a linear cache leak)
   +fixed the black screen soft-lock issue when escape is held or rammed when transitioning levels
   +fixed game timer overflow soft-lock issues (the ~10 hour session soft-lock)
   +fixed menu sometimes showing over top of the cinematics during demo intermissions
   +fixed issue where the total timers could get clobbered while transitioning episodes mid-session if continuous demos played more than one level on the menu
   +fixed speedrunCategoriesMet bug introduced in 1.1.1 which was causing it to display incorrectly on the level stats and end of level screens
      (it's worth noting that this bug prompted me to remove the download for version 1.1.1 from BitBucket shortly after release)
   +fixed console to open and close properly
   +fixed console to allow for re-binding of the console key
   +fixed console pausing when opened to work properly
   +never recenter the window (allows repositioning the pkDuke3D window)
  
  This follows minor update (1.1.1) which improved the Game-Time timer further, keeping it running even when the player is dead or frozen
   (which was an issue with Duke3D's original game timer).
  A full changelog can be seen in the commit history on BitBucket.
  
  This is a release candidate -- while I do recommend updating to this given the number of issues fixed,
   this version has yet to be tested for the significant amount of time necessary for me to consider it assuredly stable.
  If you are recording a demo, please be cautious to also record a video for safety.
  
  This update has been a long-time coming & includes improvements suggested by fellow Duke speedrunners;
   special thanks to everyone for testing & suggesting improvements!
  Again, please let me know if you run into any issues or have suggestions, and I'll be sure to get them into a new version! :)
   ~pogokeen



pkDuke3D is a source port based on Duke Nukem 3D: Megaton Edition.
pkDuke3D adds features useful to speedrunners while avoiding any modification to gameplay.


Features:

+ Supports IL & continuous demo (.DMO) recording and playback (/r and /rc on the command-line, respectfully)
+ Provides the option to disable demo cameras (/k on the command-line)
+ When in demo (.DMO) playback mode (/dFILE on the command-line), proper level music is played rather than the main menu theme.
  Additionally, demo statistics are presented at the end of demo playback!
+ Adds a variety of timers -- track your runs with the classic Duke3D timer or the new accurate Game-Time & Real-Time timers
+ Tracks the speedrun categories your run qualifies for (including Any%, 100S, 100%, Max%)
+ Built on and true to version 1.3.2 of Megaton Edition, one of the nicest versions of Megaton Edition for speedrunning


Installation (Skip Step 1 for Upgrade):

1. Copy your Megaton Edition directory
    (typically "C:\Program Files (x86)\Steam\steamapps\common\Duke Nukem 3D" for a Steam install)
    to a new directory where you want pkDuke3D installed. (ex. "C:\Software\pkDuke3D")
2. Extract pkDuke3D.zip within that folder, replacing any existing files.

It is highly recommended to extract into a copy, rather than in your normal Megaton install directory, as the two versions WILL CLASH.
If you are creating a shortcut to pkDuke3d.exe (in Windows/Steam), be certain to set the shortcut to start in the gameroot directory.


How To Use:

pkDuke3D.exe must be run with the "gameroot" folder as the present working directory!
Otherwise, it will complain about not finding TABLES.DAT.

To quick-start, execute "bin/pkDuke3d_play.bat" to jump straight into the game.
You can also use "bin/pkDuke3d_gamerootCMD.bat" to open a command-prompt from the gameroot folder.

Within the gameroot command-prompt, type:
..\bin\pkDuke3D.exe /S1 /V1 /L1 /rc
to start recording a continuous demo on Skill 1 (/S1), Episode 1 (/V1), Level 1 (/L1).
This demo will continue to record until you exit the game.
Note that this will overwrite DEMO1.DMO with your recorded demo.

To record an IL demo:
..\bin\pkDuke3D.exe /S1 /V1 /L1 /r
will start recording an IL demo on Skill 1 (/S1), Episode 1 (/V1), Level 1 (/L1).
This demo will continue to record until you die, exit the level, or quit the game.
Note that this will overwrite DEMO1.DMO with your recorded demo.

To playback a demo:
..\bin\pkDuke3D.exe /dDEMO1.DMO
will playback DEMO1.DMO in demo playback mode.
Note that playing back a demo with any other name will replace DEMO1.DMO with that demo.

Add the /k switch to disable demo cameras in both gameplay and demo playback!

Further, note that any command-line switches can also be provided in the target of a Windows/Steam Shortcut!


Command Line Help (A List of The Command-Line Switches For pkDuke3D):

?, /?          This help message
/l##           Level (1-11)
/v#            Volume (1-4)
/s#            Skill (1-4)
/r             Record Individual Level Demo
/rc            Record Continuous Demo
/dFILE         Start to play demo FILE
/k             Disable demo cameras
/m             No monsters
/ns            No sound
/nm            No music
/t#            Respawn, 1 = Monsters, 2 = Items, 3 = Inventory, x = All
/c#            MP mode, 1 = DukeMatch(spawn), 2 = Coop, 3 = Dukematch(no spawn)
/q#            Fake multiplayer (2-8 players)
/a             Use player AI (fake multiplayer only)
/i#            Network mode (1/0) (multiplayer only) (default == 1)
/f#            Send fewer packets (1, 2, 4) (multiplayer only)
/gFILE         Use multiple group files
/jDIRECTORY    Add a directory to the file path stack
/hFILE         Use FILE instead of DUKE3D.DEF
/xFILE         Compile FILE (default GAME.CON)
/u#########    User's favorite weapon order (default: 3425689071)
/#             Load and run a game (slot 0-9)
-map FILE      Use a map FILE
-name NAME     Foward NAME
-net           Net mode game
-nam           Activates NAM compatibility mode (sets CON to NAM.CON and GRP to NAM.GRP)
-setup         Displays the configuration dialogue box
-addon #       Set which add-on to play (0 = Atomic [Default], 1 = D.C., 2 = Nuclear Winter, 3 = Caribbean)
-noanim        Disable animations
-delete-saves  Delete all saves from cloud and locally


Legal:

"Build Engine & Tools" Copyright (c) 1993-1997 Ken Silverman
Ken Silverman's official web site: "http://www.advsys.net/ken"
See the included license file "BUILDLIC.TXT" for license info.

pkDuke3D Modifications are Copyright (C) 2014-2017 Alex "pogokeen" Dawson

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
