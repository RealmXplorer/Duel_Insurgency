function du-in:reset
#Teleport and kill all map specific entities
execute at @e[type=armor_stand,tag=vendMachine] run fill ~ ~ ~ ~ ~1 ~ air

tp @e[type=!player,tag=mapSpecific] 216 0 40
kill @e[type=!player,tag=mapSpecific]

execute unless score #main pylonsDestroyed matches 4.. run function du-in:ingame/endround/end_timer
execute if score #main pylonsDestroyed matches 4.. run function du-in:void/free/start