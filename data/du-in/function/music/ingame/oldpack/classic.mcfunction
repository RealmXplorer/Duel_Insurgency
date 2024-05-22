#CLASSIC#
#scoreboard players set @s[tag=song,scores={music=1240..},tag=!songEnd] music 0
#execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:oldmusic.ffa record @s ~ ~ ~ 10000000000000000000000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=oldPack,tag=!tournament,tag=!musicOff,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:oldmusic.ffa record @s ~ ~ ~ 10000000 1 1

#scoreboard players set @s[tag=songEnd,scores={music=1520..}] music 0
#execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:oldmusic.ffaend record @s ~ ~ ~ 10000000 1 1

execute as @a[tag=songEnd,tag=oldPack,tag=!tournament,tag=!musicOff,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:oldmusic.ffaend record @s ~ ~ ~ 10000000 1 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/oldpack/classic 1240t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/oldpack/classic 1520t