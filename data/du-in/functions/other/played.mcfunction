scoreboard players set @s kit 0
tag @s add lobby
scoreboard players set @s lobby 0
team join lobby @s
tp @s -999 13 517
execute store result score @s UUID run data get entity @s UUID[0]
scoreboard players set @s maxLives 5
scoreboard players set @s killScale 0
scoreboard players set @s tKillScale 0
scoreboard players set @s dmScale 0
scoreboard players set @s kothScale 0
scoreboard players set @s tKothScale 0
scoreboard players set @s ctfScale 0
scoreboard players set @s conqScale 0
scoreboard players set @s Wins 0
scoreboard players set @s Kills 0
scoreboard players set @s Diamonds 0
scoreboard players set @s spawnpoint 1
execute store result score @s UUID run data get entity @s UUID[0]

scoreboard players set @s level 0
execute store result score @s expCap run scoreboard players get @s level
scoreboard players operation @s expCap *= #main ten
scoreboard players operation @s expCap += #main hundred

scoreboard players add @s player 0
execute if entity @s[scores={player=0}] run scoreboard players add #main player 1
scoreboard players operation @s[scores={player=0}] player = #main player

bossbar set minecraft:map_countdown players @a
effect give @a minecraft:saturation 1000000 100 true
title @a times 0 60 0
title @a title {"text":"","color":"red","bold":true}
title @a subtitle {"text":"Open inventory for more options!","color":"red","bold":true}
title @a actionbar {"text":"Open inventory for more options!","color":"red","bold":true}
tag @s add played