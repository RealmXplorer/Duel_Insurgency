#CAPTURE THE FLAG#
scoreboard players set @s[tag=song,scores={music=3500..}] music 0
execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:music.ctf record @s ~ ~ ~ 10000000000000000000000000 1 1

#END OF ROUND#
scoreboard players set @s[tag=songEnd,scores={music=3860..}] music 0
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.ctfend record @s ~ ~ ~ 10000000 1 1
