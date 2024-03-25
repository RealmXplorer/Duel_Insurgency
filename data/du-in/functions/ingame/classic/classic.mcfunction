#NORMAL CLASSIC STUFF#
execute if entity @a[tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/classic/default/default

#TEAM CLASSIC STUFF#
execute if entity @a[tag=teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/classic/team/teams

#TIMED CLASSIC STUFF
execute if entity @a[tag=timedMode,tag=!teamMode,tag=partyLeader] run function du-in:ingame/classic/timed/timed

execute if entity @a[tag=timedMode,tag=teamMode,tag=partyLeader] run function du-in:ingame/classic/team_timed/timed

#Map stuff
execute if score #main map matches 2 run function du-in:maps/hive/constant


execute if score #main map matches 6 as @a[gamemode=!spectator,tag=!devMode] at @s if entity @s[y=-1,dy=-6] run kill @s
execute if score #main map matches 13 run function du-in:maps/jermall/constant
execute if score #main map matches 14 as @a[gamemode=!spectator] at @s if entity @s[distance=..100,y=5,dy=-2,tag=!working] run kill @s

execute if score #main map matches 16 run function du-in:maps/escher/constant