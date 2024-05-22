#CLASSIC#
#scoreboard players set @s[tag=song,scores={music=1660..},tag=!songEnd] music 0
#execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:music.legacy.ffa record @s ~ ~ ~ 10000000000000000000000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=legacy,tag=!oldPack,tag=!tournament,tag=!musicOff,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.legacy.ffa record @s ~ ~ ~ 100000000000 1 1

#scoreboard players reset @s[tag=songEnd,scores={music=1400..}] music
#execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.legacy.ffaend record @s ~ ~ ~ 10000000 1 1

execute as @a[tag=songEnd,tag=legacy,tag=!oldPack,tag=!tournament,tag=!musicOff,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.legacy.ffaend record @s ~ ~ ~ 10000000 1 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/legacy/classic 1660t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/legacy/classic 1400t