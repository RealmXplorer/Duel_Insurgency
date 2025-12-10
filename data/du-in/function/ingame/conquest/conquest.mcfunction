#Points#
execute as @e[type=marker,tag=cqPoint] at @s run function du-in:ingame/conquest/points/point

#Select Submode
execute if score #Conquest gamemode matches 0 run function du-in:ingame/conquest/default/default
execute if score #Conquest gamemode matches 1 run function du-in:ingame/conquest/timed/timed

#(old)
# execute if entity @a[tag=!timedMode,tag=partyLeader] run function du-in:ingame/conquest/default/default
# execute if entity @a[tag=timedMode,tag=partyLeader] run function du-in:ingame/conquest/timed/timed

#Map stuff
execute if score #main map matches 3 run function du-in:maps/ricardo/constant