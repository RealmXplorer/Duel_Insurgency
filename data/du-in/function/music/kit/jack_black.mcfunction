#SAAC MUSIC#
scoreboard players set @s[scores={music=1300..},tag=!songEnd] music 0
execute if entity @s[scores={music=1},tag=!songEnd,tag=!musicOff] run playsound minecraft:music.jack_black record @s ~ ~ ~ 10000000000000000000000000 1 1

scoreboard players set @s[tag=songEnd,scores={music=1040..}] music 0
execute if entity @s[tag=songEnd,scores={music=1},tag=!musicOff] run playsound minecraft:music.jack_black record @s ~ ~ ~ 10000000 1.25 1

execute if entity @s[tag=!song,tag=!songEnd] run function du-in:music/kit/stop/kit