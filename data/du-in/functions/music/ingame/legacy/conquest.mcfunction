#CONQUEST#
scoreboard players set @s[tag=song,scores={music=1950..}] music 0
execute if entity @s[tag=song,scores={music=1}] run playsound minecraft:music.legacy.cq record @s ~ ~ ~ 1000000 1 1

#END OF ROUND#
scoreboard players set @s[tag=songEnd,scores={music=2260..}] music 0
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.legacy.cqend record @s ~ ~ ~ 1000000 1 1