#KING OF THE HILL#
##COPYRIGHT
scoreboard players set @s[tag=song,scores={music=2720..}] music 0
execute if entity @s[tag=song,scores={music=1}] run playsound minecraft:music.christmas.koth record @s ~ ~ ~ 1000000 1 1

scoreboard players set @s[tag=songEnd,scores={music=2180..}] music 0
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.christmas.koth record @s ~ ~ ~ 1000000 1.25 1