#TOURNAMENT#
#scoreboard players set @s[tag=song,scores={music=2860..},tag=!oldPack,tag=!songEnd] music 0
#execute if entity @s[tag=song,tag=!songEnd,scores={music=1},tag=!oldPack,tag=!musicOff] run playsound minecraft:music.tournamentffa record @s ~ ~ ~ 10000000000000000000000000 1 1
#stopsound @s[tag=song,tag=songEnd] record minecraft:music.tournamentffa
execute as @a[tag=song,tag=!songEnd,tag=tournament,tag=!musicOff,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.tournamentffa record @s ~ ~ ~ 10000000000000000000000000 1 1

#tag=!oldPack,tag=tournament,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul

#scoreboard players reset @s[tag=songEnd,scores={music=2620..},tag=!oldPack] cendmusic
#execute if entity @s[tag=songEnd,scores={music=1},tag=!oldPack,tag=!musicOff] run playsound minecraft:music.tournamentffaend record @s ~ ~ ~ 10000000 1 1

execute as @a[tag=songEnd,tag=tournament,tag=!musicOff,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.tournamentffaend record @s ~ ~ ~ 10000000 1 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/other/tournament 2860t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/other/tournament 2620t