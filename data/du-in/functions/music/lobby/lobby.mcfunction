execute if entity @s[tag=!oldPack,tag=!krampusPack,tag=!tournament,tag=!parkour,tag=!halloween,tag=!shop,tag=!credits] run function du-in:music/lobby/default/lobby

#KRAMPUS LOBBY#
execute if entity @s[tag=krampusPack,tag=!tournament] run function du-in:music/lobby/other/krampus

#HALLOWEEN#
execute if entity @s[tag=halloween,tag=!tournament,tag=!krampusPack] run function du-in:music/lobby/other/halloween

#BETA#
execute if entity @s[tag=oldPack,tag=!tournament,tag=!krampusPack] run function du-in:music/lobby/oldpack/lobby

#TOURNAMENT#
execute if entity @s[tag=tournament] run function du-in:music/lobby/other/tournament

execute if entity @s[tag=working] run function du-in:music/lobby/stop/lobby
#execute if entity @s[tag=parkour] run function du-in:music/lobby/stop/lobby