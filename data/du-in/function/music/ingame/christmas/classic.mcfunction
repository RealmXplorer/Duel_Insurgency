#CLASSIC#
##COPYRIGHT

execute as @a[tag=song,tag=!songEnd,tag=christmas,tag=!legacy,tag=!oldPack,tag=!tournament,tag=!musicOff,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.christmas.ffa record @s ~ ~ ~ 10000000000000000000000000 1 1

execute as @a[tag=songEnd,tag=christmas,tag=!legacy,tag=!oldPack,tag=!tournament,tag=!musicOff,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.christmas.ffa record @s ~ ~ ~ 10000000 1.25 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/christmas/classic 3280t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/christmas/classic 2620t