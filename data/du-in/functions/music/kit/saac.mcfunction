#SAAC MUSIC#
scoreboard players set @s[scores={music=2300..},tag=!songEnd] music 0
execute if entity @s[scores={music=1},tag=!songEnd,tag=!musicOff] run playsound minecraft:music.saac record @s ~ ~ ~ 10000000000000000000000000 1 1

#tag @s[tag=saac,tag=dmend] add saacEnd
#tag @s[tag=saacEnd,tag=saac] remove dm

scoreboard players set @s[tag=songEnd,scores={music=1840..}] music 0
execute if entity @s[tag=songEnd,scores={music=1},tag=!musicOff] run playsound minecraft:music.saac record @s ~ ~ ~ 10000000 1.25 1

execute if entity @s[tag=!song,tag=!songEnd] run function du-in:music/kit/stop/kit