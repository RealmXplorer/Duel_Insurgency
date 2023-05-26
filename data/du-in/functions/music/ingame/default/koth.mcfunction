#KING OF THE HILL#
# scoreboard players set @s[tag=song,scores={music=3360..},tag=!startgame,tag=!songEnd] music 0
# execute if entity @s[tag=song,scores={music=1},tag=!startgame,tag=!songEnd] run playsound minecraft:music.koth record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.koth record @s ~ ~ ~ 1000000 1 1

# scoreboard players set @s[tag=songEnd,scores={music=2980..},tag=!startgame] music 0
# execute if entity @s[tag=songEnd,scores={music=1},tag=!startgame] run playsound minecraft:music.kothend record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] run playsound minecraft:music.kothend record @s ~ ~ ~ 1000000 1 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/default/koth 3360t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/default/koth 2980t