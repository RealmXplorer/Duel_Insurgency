playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000 1
execute unless score #main pylonsDestroyed matches 3 run setblock ~ ~-1 ~ minecraft:lime_concrete destroy
execute if score #main pylonsDestroyed matches 3 run setblock ~ ~-1 ~ minecraft:light_gray_concrete destroy

#execute store result score #main currentMap run scoreboard players get @s mapVote

#execute unless score #main pylonsDestroyed matches 3 as @e[type=marker,tag=mapVote] at @s unless score @s mapVote = #main currentMap unless block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:red_concrete destroy
#execute if score #main pylonsDestroyed matches 3 as @e[type=marker,tag=mapVote] at @s unless score @s mapVote = #main currentMap unless block ~ ~-1 ~ minecraft:gray_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete destroy
