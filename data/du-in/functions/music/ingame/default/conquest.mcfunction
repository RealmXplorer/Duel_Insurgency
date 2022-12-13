#CONQUEST#
scoreboard players set @s[tag=song,scores={music=3480..}] music 0
execute if entity @s[tag=song,scores={music=1}] run playsound minecraft:music.cq record @s ~ ~ ~ 1000000 1 1

#END OF ROUND#
scoreboard players set @s[tag=songEnd,scores={music=2980..}] music 0
execute if entity @s[tag=songEnd,scores={music=1},tag=!musicOff] run playsound minecraft:music.cqend record @s ~ ~ ~ 1000000 1 1
