function du-in:reset

#Remove Barriers and Light blocks from Vending machines
execute at @e[type=armor_stand,tag=vendMachine] run fill ~ ~ ~ ~ ~1 ~ air

#Teleport and kill all map specific entities
tp @e[type=!player,tag=mapSpecific] 216 0 40
kill @e[type=!player,tag=mapSpecific]

# execute unless entity @a[tag=partyLeader,tag=specialEvent] unless score #main pylonsDestroyed matches 4.. run function du-in:ingame/endround/lobby_return
# execute unless entity @a[tag=partyLeader,tag=specialEvent] if score #main pylonsDestroyed matches 4.. run function du-in:void/free/start
# execute if entity @a[tag=partyLeader,tag=specialEvent] run function du-in:maps/dfc/end_round

execute unless score #main pylonsDestroyed matches 4.. run function du-in:ingame/endround/lobby_return
execute if score #main pylonsDestroyed matches 4.. run function du-in:void/free/start
