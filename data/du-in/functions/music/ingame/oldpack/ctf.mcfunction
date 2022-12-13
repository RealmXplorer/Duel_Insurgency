#CAPTURE THE FLAG#
scoreboard players set @s[tag=song,scores={music=1650..}] music 0
execute if entity @a[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:oldmusic.ctf record @s ~ ~ ~ 10000000000000000000000000 1 1

scoreboard players reset @s[tag=songEnd,scores={music=1470..}] music
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:oldmusic.ctfend record @s ~ ~ ~ 10000000 1 1