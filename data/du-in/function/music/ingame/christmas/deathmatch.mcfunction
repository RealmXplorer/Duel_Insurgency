#DEATHMATCH#
##COPYRIGHT
execute as @a[tag=song,tag=!songEnd,tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!saac, tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.christmas.dm record @s ~ ~ ~ 1000000 1 1

#END OF ROUND#
execute as @a[tag=songEnd,tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!saac, tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.christmas.dm record @s ~ ~ ~ 1000000 1.25 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/christmas/deathmatch 3040t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/christmas/deathmatch 2440t