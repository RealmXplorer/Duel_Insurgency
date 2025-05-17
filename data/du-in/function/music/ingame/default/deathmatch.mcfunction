#DEATHMATCH#
#scoreboard players set @s[tag=song,scores={music=3340..},tag=!songEnd] music 0
#execute if entity @s[tag=song,scores={music=1},tag=!musicOff,tag=!songEnd] run playsound minecraft:music.dm record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac, tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.dm record @s ~ ~ ~ 1000000 1 1

#END OF ROUND# 
#scoreboard players set @s[tag=songEnd,scores={music=2560..}] music 0
#execute if entity @s[tag=songEnd,scores={music=1},tag=!musicOff] run playsound minecraft:music.dmend record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac, tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.dmend record @s ~ ~ ~ 1000000 1 1


#tag=!oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac, tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff
execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/default/deathmatch 3340t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/default/deathmatch 2560t