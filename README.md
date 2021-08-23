A minimalistic mod loader for The Binding of Isaac: Repentance  
How to use:  
*Set an environment variable ISAACPATH that contains the path to your Isaac folder (usually either "C:\Program Files (x86)\Steam\steamapps\common\The Binding of Isaac Rebirth" or "~/. local/share/Steam/SteamApps/common/The Binding of Isaac Rebirth"  
*add any modpacks you want to a folder called 'modpacks' in the folder referenced in ISAACPATH:  
  *The packs use the following structure:  
    *filenames are *.pack  
    *each line is the name of a mod's folder within ISAACPATH/mods  
*Optional: create an alias for the script. In Linux, it's as simple as adding the following line to ~/.bash_aliases  
modloader="PATH_TO_SCRIPT"  
*launch the script with ./launch.sh pack, where pack is the name of a pack (without the .pack extension)  
I might add a windows version and make better config files later but for now it's just for my personal use so -\(-_-)/-  
*To create a modpack easily, enable/disable the mods you want inside Isaac. Then  just run ./createmodpack.sh name, where name is the name of the modpack you want to create. This "saves" all currently enabled mods to a new pack callde name.pack.
