#DEATHMATCH#
scoreboard players set @s[tag=song,scores={music=1100..}] music 0
execute if entity @s[tag=song,scores={music=1}] run playsound minecraft:oldmusic.dm record @s ~ ~ ~ 1000000 1 1

scoreboard players set @s[tag=songEnd,scores={music=1100..}] music 0
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:oldmusic.dmend record @s ~ ~ ~ 1000000 1 1