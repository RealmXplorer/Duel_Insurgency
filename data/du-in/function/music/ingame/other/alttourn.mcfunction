#TOURNAMENT#
scoreboard players set @s[tag=song,scores={music=2660..},tag=!songEnd] music 0
execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:oldmusic.tournament record @s ~ ~ ~ 10000000000000000000000000 1 1

scoreboard players reset @s[tag=songEnd,scores={music=2320..}] cendmusic
execute if entity @s[tag=songEnd,scores={music=1},tag=!musicOff] run playsound minecraft:oldmusic.tournamentend record @s ~ ~ ~ 10000000 1 1