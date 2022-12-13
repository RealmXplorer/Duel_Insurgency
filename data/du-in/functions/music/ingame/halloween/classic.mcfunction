#CLASSIC#
scoreboard players set @s[tag=song,scores={music=3260..},tag=!songEnd] music 0
execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:music.halloween.ffa record @s ~ ~ ~ 10000000000000000000000000 1 1

scoreboard players reset @s[tag=songEnd,scores={music=2600..}] music
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.halloween.ffa record @s ~ ~ ~ 10000000 1.25 1
