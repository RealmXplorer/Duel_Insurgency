execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=13}] run function du-in:lobby/mapselect/vote/select
execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=13}] run scoreboard players set @s mapVote 13

execute unless entity @a[scores={mapVote=13}] unless block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:red_concrete destroy
