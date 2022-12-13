#KING OF THE HILL#
scoreboard players set @s[tag=song,scores={music=1000..}] music 0
execute if entity @s[tag=song,scores={music=1}] run playsound minecraft:oldmusic.koth record @s ~ ~ ~ 1000000 1 1

scoreboard players reset @s[tag=songEnd,scores={music=1000..}] music
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:oldmusic.kothend record @s ~ ~ ~ 1000000 1 1