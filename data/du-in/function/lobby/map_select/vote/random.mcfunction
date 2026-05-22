# execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=-1}] run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000 1
# execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=-1}] run setblock ~ ~-1 ~ minecraft:lime_concrete destroy

# execute as @a[distance=..1,tag=!spect] unless entity @s[scores={mapVote=-1}] run scoreboard players set @s mapVote -1

execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=-1}] run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000 1

#Yes Vote
execute unless score #main pylonsDestroyed matches 3 as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=-1}] run setblock ~ ~-1 ~ minecraft:lime_concrete destroy
execute if score #main pylonsDestroyed matches 3 as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=-1}] run setblock ~ ~-1 ~ minecraft:light_gray_concrete destroy

execute as @a[distance=..1,tag=!spectating] unless entity @s[scores={mapVote=-1}] run scoreboard players set @s mapVote -1

#No Vote
execute unless score #main pylonsDestroyed matches 3 unless entity @a[scores={mapVote=-1}] unless block ~ ~-1 ~ minecraft:blue_concrete run setblock ~ ~-1 ~ minecraft:blue_concrete destroy
execute if score #main pylonsDestroyed matches 3 unless entity @a[scores={mapVote=-1}] unless block ~ ~-1 ~ minecraft:black_concrete run setblock ~ ~-1 ~ minecraft:black_concrete destroy
