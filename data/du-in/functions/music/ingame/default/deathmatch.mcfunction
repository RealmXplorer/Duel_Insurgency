#DEATHMATCH#
scoreboard players set @s[tag=song,scores={music=3340..},tag=!songEnd] music 0
execute if entity @s[tag=song,scores={music=1},tag=!musicOff,tag=!songEnd] run playsound minecraft:music.dm record @s ~ ~ ~ 1000000 1 1
#END OF ROUND#
scoreboard players set @s[tag=songEnd,scores={music=2560..}] music 0
execute if entity @s[tag=songEnd,scores={music=1},tag=!musicOff] run playsound minecraft:music.dmend record @s ~ ~ ~ 1000000 1 1