#DEATHMATCH#
##COPYRIGHT
#scoreboard players set @s[tag=song,scores={music=3260..}] music 0
#execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:music.halloween.dm record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.halloween.dm record @s ~ ~ ~ 1000000 1 1
#tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff

#END OF ROUND#
#scoreboard players set @s[tag=songEnd,scores={music=2600..}] music 0
#execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.halloween.dm record @s ~ ~ ~ 1000000 1.25 1

execute as @a[tag=songEnd,tag=halloween,tag=!oldPack,tag=!legacy,tag=!christmas,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.halloween.dm record @s ~ ~ ~ 1000000 1.25 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/deathmatch 3260t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/halloween/deathmatch 2600t