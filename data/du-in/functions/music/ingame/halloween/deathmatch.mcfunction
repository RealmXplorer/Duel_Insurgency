#DEATHMATCH#
##COPYRIGHT
execute as @a[tag=song,tag=!songEnd,tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.halloween.dm record @s ~ ~ ~ 1000000 1 1

#END OF ROUND#
execute as @a[tag=songEnd,tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.halloween.dm record @s ~ ~ ~ 1000000 1.25 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/deathmatch 3260t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/deathmatch 2600t