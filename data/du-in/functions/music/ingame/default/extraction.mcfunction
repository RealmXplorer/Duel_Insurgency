#EXTRACTION#
scoreboard players set @s[tag=song,scores={music=3800..}] music 0
execute if entity @s[tag=song,scores={music=1}] run playsound minecraft:music.ex record @s ~ ~ ~ 1000000 1 1

scoreboard players set @s[tag=songEnd,scores={music=3820..}] music 0
execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.exend record @s ~ ~ ~ 1000000 1 1