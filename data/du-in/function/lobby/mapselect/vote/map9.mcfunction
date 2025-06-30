#execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=9}] run function du-in:lobby/mapselect/vote/select
#execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=9}] run scoreboard players set @s mapVote 9
execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=9}] run function du-in:lobby/mapselect/vote/select
execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=9}] run scoreboard players set @s mapVote 9

execute unless entity @a[scores={mapVote=9}] unless block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:red_concrete destroy
