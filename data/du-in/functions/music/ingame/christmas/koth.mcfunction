#KING OF THE HILL#
##COPYRIGHT
execute as @a[tag=song,tag=!songEnd,tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.christmas.koth record @s ~ ~ ~ 1000000 1 1

#END OF ROUND
execute as @a[tag=songEnd,tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.christmas.koth record @s ~ ~ ~ 1000000 1.25 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/christmas/koth 2720t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/christmas/koth 2180t