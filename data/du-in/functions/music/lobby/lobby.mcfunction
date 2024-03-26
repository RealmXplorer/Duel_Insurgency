execute if entity @s[tag=!oldPack,tag=!christmas,tag=!tournament,tag=!parkour,tag=!halloween,tag=!shop,tag=!credits,tag=!fromVoid] run function du-in:music/lobby/default/lobby

#KRAMPUS LOBBY#
execute if entity @s[tag=christmas,tag=!tournament,tag=!fromVoid] run function du-in:music/lobby/other/krampus

#HALLOWEEN#
execute if entity @s[tag=halloween,tag=!tournament,tag=!christmas,tag=!fromVoid] run function du-in:music/lobby/other/halloween

#BETA#
execute if entity @s[tag=oldPack,tag=!tournament,tag=!christmas,tag=!fromVoid] run function du-in:music/lobby/oldpack/lobby

#TOURNAMENT#
execute if entity @s[tag=tournament,tag=!fromVoid] run function du-in:music/lobby/other/tournament

#VOID#
execute if entity @s[tag=fromVoid] run function du-in:music/lobby/void