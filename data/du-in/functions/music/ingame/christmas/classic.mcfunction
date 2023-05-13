#CLASSIC#
##COPYRIGHT
scoreboard players set @s[tag=song,scores={music=3280..},tag=!songEnd] music 0
execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:music.christmas.ffa record @s ~ ~ ~ 10000000000000000000000000 1 1

scoreboard players reset @s[tag=songEnd,scores={music=2620..}] music
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.christmas.ffa record @s ~ ~ ~ 10000000 1.25 1
