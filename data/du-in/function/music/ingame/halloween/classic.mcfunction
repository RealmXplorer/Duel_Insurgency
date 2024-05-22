#CLASSIC#
##COPYRIGHT

execute as @a[tag=song,tag=!songEnd,tag=halloween,tag=!legacy,tag=!oldPack,tag=!tournament,tag=!musicOff,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.halloween.ffa record @s ~ ~ ~ 10000000000000000000000000 1 1

#END OF ROUND
execute as @a[tag=songEnd,tag=halloween,tag=!legacy,tag=!oldPack,tag=!tournament,tag=!musicOff,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.halloween.ffa record @s ~ ~ ~ 10000000 1.25 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/classic 3260t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/classic 2600t