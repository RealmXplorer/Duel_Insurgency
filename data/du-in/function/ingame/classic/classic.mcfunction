#Pick Classic mode (old)#
# execute if entity @a[tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/classic/default/default
# execute if entity @a[tag=teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/classic/team/teams
# execute if entity @a[tag=timedMode,tag=!teamMode,tag=partyLeader] run function du-in:ingame/classic/timed/timed
# execute if entity @a[tag=timedMode,tag=teamMode,tag=partyLeader] run function du-in:ingame/classic/team_timed/timed

#Pick Classic mode
execute if score #Classic gamemode matches 0 run function du-in:ingame/classic/default/default
execute if score #Classic gamemode matches 1 run function du-in:ingame/classic/team/teams
execute if score #Classic gamemode matches 2 run function du-in:ingame/classic/timed/timed
execute if score #Classic gamemode matches 3 run function du-in:ingame/classic/team_timed/timed

##Map stuff
#Hive ambience
execute if score #main map matches 2 run function du-in:maps/hive/constant

#Kill zone for Ebbot
execute if score #main map matches 6 as @a[gamemode=adventure] at @s if entity @s[y=-1,dy=-6] run kill @s

#Jermall monster kill
execute if entity @a[tag=selectedTarget] if score #main map matches 13 run function du-in:maps/jermall/constant

#Kill zone for Wishing star
execute if score #main map matches 14 as @a[gamemode=adventure] at @s if entity @s[distance=..100,y=5,dy=-2] run kill @s

#Escher teleports
execute if score #main map matches 16 run function du-in:maps/escher/constant

#Ricardo kill zone
execute if score #main map matches 18 run function du-in:maps/ricardo/constant

#First Flame embers
execute if score #main map matches 19 run particle flame 7432 71 2809 0.2 0.1 0.2 0 1 force

#Ricardo kill zone
execute if entity @a[tag=specialEvent,tag=partyLeader] as @a[tag=audience] at @s run function du-in:maps/dfc/constant