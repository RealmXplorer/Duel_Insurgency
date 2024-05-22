#CAPTURE THE FLAG#
execute if entity @a[tag=!oldPack,tag=!legacy,tag=!musicOff] run function du-in:music/ingame/default/ctf

#BETA#
execute if entity @a[tag=oldPack,tag=!legacy,tag=!musicOff] run function du-in:music/ingame/oldpack/ctf

#LEGACY MUSIC#
execute if entity @a[tag=legacy,tag=!oldPack,tag=!musicOff] run function du-in:music/ingame/legacy/ctf

#execute if entity @s[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/ctf