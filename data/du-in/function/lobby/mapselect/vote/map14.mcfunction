# execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=14}] run function du-in:lobby/mapselect/vote/select
# execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=14}] run scoreboard players set @s mapVote 14
execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=14}] run function du-in:lobby/mapselect/vote/select
execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=14}] run scoreboard players set @s mapVote 14

execute unless entity @a[scores={mapVote=14}] unless block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:red_concrete destroy
