#Set kit to 0
scoreboard players set @s kit 0

#Add tag lobby, set lobby score to 0, and join lobby team
tag @s add lobby
scoreboard players set @s lobby 0
team join lobby @s

#Teleport to gamemode select
tp @s -999 13 517

#Get player's UUID
execute store result score @s UUID run data get entity @s UUID[0]

#Set all gamemode caps and settings to default
scoreboard players set @s maxLives 5
scoreboard players set @s killScale 0
scoreboard players set @s tKillScale 0
scoreboard players set @s dmScale 0
scoreboard players set @s kothScale 0
scoreboard players set @s tKothScale 0
scoreboard players set @s ctfScale 0
scoreboard players set @s conqScale 0
scoreboard players set @s dtScale 0
scoreboard players set @s gameTimeScale 0

#scoreboard players set @s pylonNum 0

#Initialize sidebar scores
scoreboard players set @s Wins 0
scoreboard players set @s Kills 0
scoreboard players set @s Diamonds 0

#Set player spawnpoint to 1 (This prevents the game from breaking on first game)
scoreboard players set @s spawnpoint 1

#Set Level and exp cap 
scoreboard players set @s level 0
scoreboard players set @s expCap 100

#execute store result score @s expCap run scoreboard players get @s level
#scoreboard players operation @s expCap *= #main ten
#scoreboard players operation @s expCap += #main hundred

#Set player's custom player number
scoreboard players add @s player 0
execute if entity @s[scores={player=0}] run scoreboard players add #main player 1
scoreboard players operation @s[scores={player=0}] player = #main player

#Set map countdown to all players (also acts as a failsafe)
bossbar set minecraft:map_countdown players @a
bossbar set bossbar:gametimer players @a

#Give all players saturation
#effect give @a minecraft:saturation 1000000 100 true

#Tell player of gamemode select options
title @a times 0 60 0
title @a title {"text":"","color":"red","bold":true}
title @a subtitle {"text":"Open inventory for more options!","color":"red","bold":true}
title @a actionbar {"text":"Open inventory for more options!","color":"red","bold":true}

#End function
tag @s add played