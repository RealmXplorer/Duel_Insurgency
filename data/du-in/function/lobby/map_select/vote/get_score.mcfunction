execute as @a[distance=..1,tag=!spectating] unless score @s mapVote = @n[tag=mapVote,type=marker] mapVote run function du-in:lobby/map_select/vote/select
execute store result score @a[distance=..1,tag=!spectating] mapVote run scoreboard players get @s mapVote

#execute store result score #main currentMap run scoreboard players get @s mapVote

#execute unless score #main pylonsDestroyed matches 3 at @s unless score @ mapVote = #main currentMap unless block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:red_concrete destroy
#execute if score #main pylonsDestroyed matches 3 at @s unless score @s mapVote = #main currentMap unless block ~ ~-1 ~ minecraft:gray_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete destroy

#execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=18}] run function du-in:lobby/map_select/vote/select
#execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=18}] run scoreboard players set @s mapVote 18
tag @s add checking
tag @s remove hasVote
execute store result score #temp mapVote run scoreboard players get @s mapVote

execute as @a[tag=!spectating] if score @s mapVote = #temp mapVote run tag @e[type=marker,tag=checking] add hasVote
execute unless entity @s[tag=hasVote] unless score #main pylonsDestroyed matches 3 unless block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:red_concrete destroy
execute unless entity @s[tag=hasVote] if score #main pylonsDestroyed matches 3 unless block ~ ~-1 ~ minecraft:gray_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete destroy

#execute unless score #main pylonsDestroyed matches 3 at @s as @a unless score @s mapVote = #main currentMap unless block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:red_concrete destroy
#execute if score #main pylonsDestroyed matches 3 at @s as @a unless score @s mapVote = #main currentMap unless block ~ ~-1 ~ minecraft:gray_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete destroy
tag @s remove checking