#DEATHMATCH#
execute if entity @s[tag=!oldPack,tag=!legacy,tag=!halloween,tag=!christmas] run function du-in:music/ingame/default/deathmatch

#BETA#
execute if entity @s[tag=oldPack,tag=!legacy,tag=!halloween,tag=!christmas] run function du-in:music/ingame/oldpack/deathmatch

#LEGACY#
execute if entity @s[tag=legacy,tag=!oldPack,tag=!halloween,tag=!christmas] run function du-in:music/ingame/legacy/deathmatch

#HALLOWEEN#
execute if entity @s[tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas] run function du-in:music/ingame/halloween/deathmatch

#CHRISTMAS
execute if entity @s[tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween] run function du-in:music/ingame/christmas/deathmatch

execute if entity @s[tag=!songEnd,tag=!song] run function du-in:music/ingame/stop/deathmatch
