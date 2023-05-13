#DEATHMATCH#
##COPYRIGHT
scoreboard players set @s[tag=song,scores={music=3040..}] music 0
execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:music.christmas.dm record @s ~ ~ ~ 1000000 1 1
#END OF ROUND#
scoreboard players set @s[tag=songEnd,scores={music=2440..}] music 0
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.christmas.dm record @s ~ ~ ~ 1000000 1.25 1