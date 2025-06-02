#NORMAL CLASSIC STUFF#
execute if entity @a[tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/classic/default/default

#TEAM CLASSIC STUFF#
execute if entity @a[tag=teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/classic/team/teams

#TIMED CLASSIC STUFF
execute if entity @a[tag=timedMode,tag=!teamMode,tag=partyLeader] run function du-in:ingame/classic/timed/timed

execute if entity @a[tag=timedMode,tag=teamMode,tag=partyLeader] run function du-in:ingame/classic/team_timed/timed

#Map stuff
execute if score #main map matches 2 run function du-in:maps/hive/constant


execute if score #main map matches 6 as @a[gamemode=adventure] at @s if entity @s[y=-1,dy=-6] run kill @s
execute if entity @a[tag=selectedTarget] if score #main map matches 13 run function du-in:maps/jermall/constant
execute if score #main map matches 14 as @a[gamemode=adventure] at @s if entity @s[distance=..100,y=5,dy=-2] run kill @s

execute if score #main map matches 16 run function du-in:maps/escher/constant

execute if score #main map matches 18 run function du-in:maps/ricardo/constant

execute if score #main map matches 19 run particle flame 7432 71 2809 0.2 0.1 0.2 0 1 force