scoreboard players add #main pylonFireList 1
# execute if score #main pylonFireList matches 1 run function du-in:ingame/void/hazard/fire/flame_start_pylon1
# execute if score #main pylonFireList matches 2 run function du-in:ingame/void/hazard/fire/flame_start_pylon2
# execute if score #main pylonFireList matches 3 run function du-in:ingame/void/hazard/fire/flame_start_pylon3
# execute if score #main pylonFireList matches 4 run function du-in:ingame/void/hazard/fire/flame_start_pylon4

execute if score #main pylonFireList matches 1 run function du-in:ingame/void/hazard/bridge/bridge_x
execute if score #main pylonFireList matches 2 run function du-in:ingame/void/hazard/bridge/bridge_z

execute if score #main pylonFireList matches 2.. run scoreboard players set #main pylonFireList 0