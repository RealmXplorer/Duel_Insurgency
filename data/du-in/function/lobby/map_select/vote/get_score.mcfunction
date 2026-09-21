execute as @a[distance=..1,tag=!spectating] unless score @s mapVote = @n[tag=mapVote,type=marker] mapVote run function du-in:lobby/map_select/vote/select
execute store result score @a[distance=..1,tag=!spectating] mapVote run scoreboard players get @s mapVote

#execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=18}] run function du-in:lobby/map_select/vote/select
#execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=18}] run scoreboard players set @s mapVote 18

execute unless score #main pylonsDestroyed matches 3 as @a unless score @s mapVote = @n[tag=mapVote,type=marker] mapVote unless block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:red_concrete destroy
execute if score #main pylonsDestroyed matches 3 as @a unless score @s mapVote = @n[tag=mapVote,type=marker] mapVote unless block ~ ~-1 ~ minecraft:gray_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete destroy
