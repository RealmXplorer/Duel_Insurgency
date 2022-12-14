execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=17}] run function du-in:lobby/mapselect/vote/select
execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=17}] run scoreboard players set @s mapVote 17

execute unless entity @a[scores={mapVote=17}] unless block ~ ~-1 ~ minecraft:red_concrete run setblock ~ ~-1 ~ minecraft:red_concrete destroy
