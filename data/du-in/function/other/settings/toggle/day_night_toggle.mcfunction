#Cycle
scoreboard players add #main dayNightSetting 1
execute if score #main dayNightSetting matches 2 run scoreboard players reset #main dayNightSetting

#Fall damage on
execute if score #main dayNightSetting matches 1 run tellraw @a ["",{"text":"Day-Night Cycle: ","bold":true,"color":"gold"},{"text":"True","color":"green"}]
execute if score #main dayNightSetting matches 1 run gamerule doDaylightCycle true

#Fall damage off
execute unless score #main dayNightSetting matches 1 run tellraw @a ["",{"text":"Day-Night Cycle: ","bold":true,"color":"gold"},{"text":"False","color":"red"}]
execute unless score #main dayNightSetting matches 1 run gamerule doDaylightCycle false

setblock ~ ~ ~-2 stone_button[facing=north] destroy