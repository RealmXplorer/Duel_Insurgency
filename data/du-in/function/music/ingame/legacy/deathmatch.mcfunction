#DEATHMATCH#
#scoreboard players set @s[tag=song,scores={music=1840..}] music 0
#execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound du-in:music.legacy.deathmatch record @s ~ ~ ~ 1000000 1 1

#tag=legacy,tag=!beta,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff
execute as @a[tag=song,tag=!songEnd,tag=legacy,tag=!beta,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound du-in:music.legacy.deathmatch record @s ~ ~ ~ 1000000 1 1

#END OF ROUND#
#scoreboard players set @s[tag=songEnd,scores={music=1660..},tag=!startgame] music 0
#execute if entity @s[tag=songEnd,scores={music=1}] run playsound du-in:music.legacy.deathmatch_end record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,tag=legacy,tag=!beta,tag=!halloween,tag=!christmas,tag=!saac,tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound du-in:music.legacy.deathmatch_end record @s ~ ~ ~ 1000000 1 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/legacy/deathmatch 1840t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/legacy/deathmatch 1660t