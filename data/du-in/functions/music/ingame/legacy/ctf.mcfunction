#CAPTURE THE FLAG#
scoreboard players set @s[tag=song,scores={music=2380..}] music 0
execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:music.legacy.ctf record @s ~ ~ ~ 10000000000000000000000000 1 1

#END OF ROUND#
scoreboard players set @s[tag=songEnd,scores={music=2880..}] music 0
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.legacy.ctfend record @s ~ ~ ~ 10000000 1 1
