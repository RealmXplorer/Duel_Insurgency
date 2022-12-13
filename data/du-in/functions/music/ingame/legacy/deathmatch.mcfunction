#DEATHMATCH#
scoreboard players set @s[tag=song,scores={music=1840..}] music 0
execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:music.legacy.dm record @s ~ ~ ~ 1000000 1 1
#END OF ROUND#
scoreboard players set @s[tag=songEnd,scores={music=1660..},tag=!startgame] music 0
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.legacy.dmend record @s ~ ~ ~ 1000000 1 1
