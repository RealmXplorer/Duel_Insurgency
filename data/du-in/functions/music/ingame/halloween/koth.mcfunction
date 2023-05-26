#KING OF THE HILL#
##COPYRIGHT
# scoreboard players set @s[tag=song,scores={music=2980..}] music 0
# execute if entity @s[tag=song,scores={music=1}] run playsound minecraft:music.halloween.koth record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.halloween.koth record @s ~ ~ ~ 1000000 1 1

# scoreboard players set @s[tag=songEnd,scores={music=2380..}] music 0
# execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.halloween.koth record @s ~ ~ ~ 1000000 1.25 1

execute as @a[tag=songEnd,tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.halloween.koth record @s ~ ~ ~ 1000000 1.25 1


execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/koth 2980t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/koth 2380t