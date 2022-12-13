#CONQUEST#
execute if entity @s[tag=!oldPack,tag=!legacy] run function du-in:music/ingame/default/conquest

#BETA#
execute if entity @s[tag=oldPack,tag=!legacy] run function du-in:music/ingame/oldpack/conquest

execute if entity @s[tag=legacy,tag=!oldPack] run function du-in:music/ingame/legacy/conquest

execute if entity @s[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/conquest