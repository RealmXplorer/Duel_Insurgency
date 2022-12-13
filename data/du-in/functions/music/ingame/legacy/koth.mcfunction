#KING OF THE HILL#
scoreboard players set @s[tag=song,scores={music=2180..}] music 0
execute if entity @s[tag=song,scores={music=1}] run playsound minecraft:music.legacy.koth record @s ~ ~ ~ 1000000 1 1

scoreboard players set @s[tag=songEnd,scores={music=2800..}] music 0
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.legacy.kothend record @s ~ ~ ~ 1000000 1 1