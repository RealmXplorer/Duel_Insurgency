# execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=20}] run function du-in:lobby/map_select/vote/select
# execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=20}] run scoreboard players set @s mapVote 20
execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=20}] run function du-in:lobby/map_select/vote/select
execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=20}] run scoreboard players set @s mapVote 20

execute unless entity @a[scores={mapVote=20}] unless block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:red_concrete destroy
