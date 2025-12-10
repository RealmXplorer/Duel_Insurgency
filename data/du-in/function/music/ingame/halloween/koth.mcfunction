#KING OF THE HILL#
##COPYRIGHT
execute as @a[tag=song,tag=!songEnd,tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.halloween.koth record @s ~ ~ ~ 1000000 1 1

#END OF ROUND
execute as @a[tag=songEnd,tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.halloween.koth record @s ~ ~ ~ 1000000 1.25 1


execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/koth 2980t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/koth 2380t