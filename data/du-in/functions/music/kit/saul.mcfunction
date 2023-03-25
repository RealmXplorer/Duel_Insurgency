#CHUNGUS MUSIC#
scoreboard players set @s[tag=song,scores={music=1480..},tag=saul,tag=!songEnd] music 0
execute if entity @s[tag=song,scores={music=1},tag=!songEnd,tag=saul,tag=!musicOff,tag=!startgame] run playsound minecraft:music.saul record @s ~ ~ ~ 10000000000000000000000000 1 1


scoreboard players set @s[tag=songEnd,scores={music=1200..},tag=saul] music 0
execute if entity @s[tag=songEnd,scores={music=1},tag=saul,tag=!musicOff,tag=!startgame] run playsound minecraft:music.saul record @s ~ ~ ~ 10000000 1.25 1

execute if entity @s[tag=!song,tag=!songEnd,tag=saul] run function du-in:music/kit/stop/kit