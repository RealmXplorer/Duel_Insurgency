#CLASSIC#
##COPYRIGHT
#scoreboard players set @s[tag=song,scores={music=3260..},tag=!songEnd] music 0
#execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:music.halloween.ffa record @s ~ ~ ~ 10000000000000000000000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=halloween,tag=!legacy,tag=!oldPack,tag=!tournament,tag=!musicOff,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.halloween.ffa record @s ~ ~ ~ 10000000000000000000000000 1 1

#,tag=legacy,tag=!oldPack,tag=!tournament,tag=!musicOff,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul
#scoreboard players reset @s[tag=songEnd,scores={music=2600..}] music
#execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.halloween.ffa record @s ~ ~ ~ 10000000 1.25 1

execute as @a[tag=songEnd,tag=halloween,tag=!legacy,tag=!oldPack,tag=!tournament,tag=!musicOff,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.halloween.ffa record @s ~ ~ ~ 10000000 1.25 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/classic 3260t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/classic 2600t