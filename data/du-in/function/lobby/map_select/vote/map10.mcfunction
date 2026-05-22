# execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=10}] run function du-in:lobby/map_select/vote/select
# execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=10}] run scoreboard players set @s mapVote 10
execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=10}] run function du-in:lobby/map_select/vote/select
execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=10}] run scoreboard players set @s mapVote 10

execute unless score #main pylonsDestroyed matches 3 unless entity @a[scores={mapVote=10}] unless block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:red_concrete destroy
execute if score #main pylonsDestroyed matches 3 unless entity @a[scores={mapVote=10}] unless block ~ ~-1 ~ minecraft:gray_concrete run setblock ~ ~-1 ~ minecraft:gray_concrete destroy
