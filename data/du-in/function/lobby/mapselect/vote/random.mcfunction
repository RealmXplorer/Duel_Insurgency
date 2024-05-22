execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=-1}] run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000 1
execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=-1}] run setblock ~ ~-1 ~ minecraft:lime_concrete destroy

execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=-1}] run scoreboard players set @s mapVote -1

execute unless entity @a[scores={mapVote=-1}] unless block ~ ~-1 ~ minecraft:blue_concrete run setblock ~ ~-1 ~ minecraft:blue_concrete destroy
