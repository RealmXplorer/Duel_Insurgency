#Points#
execute as @e[type=marker,tag=cqPoint] at @s run function du-in:ingame/conquest/points/point

#Map stuff
#execute if score #main map matches 3 run function du-in:map/ricardo/constant

execute if entity @a[tag=playing,tag=!void] run schedule function du-in:ingame/conquest/conquest 1t

#Select Submode
execute if score #Conquest gamemode matches 0 run return run function du-in:ingame/conquest/default/default
execute if score #Conquest gamemode matches 1 run function du-in:ingame/conquest/timed/timed

