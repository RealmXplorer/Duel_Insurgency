#CAPTURE THE FLAG#
execute if entity @s[tag=!oldPack,tag=!legacy] run function du-in:music/ingame/default/ctf

#BETA#
execute if entity @s[tag=oldPack,tag=!legacy] run function du-in:music/ingame/oldpack/ctf

#LEGACY MUSIC#
execute if entity @s[tag=legacy,tag=!oldPack] run function du-in:music/ingame/legacy/ctf

execute if entity @s[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/ctf