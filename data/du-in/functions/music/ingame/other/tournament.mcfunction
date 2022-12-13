#TOURNAMENT#
scoreboard players set @s[tag=song,scores={music=2860..},tag=!oldPack,tag=!songEnd] music 0
execute if entity @s[tag=song,scores={music=1},tag=!cend,tag=!oldPack,tag=!musicOff] run playsound minecraft:music.tournamentffa record @s ~ ~ ~ 10000000000000000000000000 1 1
#stopsound @s[tag=song,tag=songEnd] record minecraft:music.tournamentffa

scoreboard players reset @s[tag=songEnd,scores={music=2620..},tag=!oldPack] cendmusic
execute if entity @s[tag=songEnd,scores={music=1},tag=!oldPack,tag=!musicOff] run playsound minecraft:music.tournamentffaend record @s ~ ~ ~ 10000000 1 1
