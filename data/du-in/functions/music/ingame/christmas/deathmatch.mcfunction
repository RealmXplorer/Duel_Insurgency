#DEATHMATCH#
##COPYRIGHT
#scoreboard players set @s[tag=song,scores={music=3040..}] music 0
#execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:music.christmas.dm record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.christmas.dm record @s ~ ~ ~ 1000000 1 1

#END OF ROUND#
#scoreboard players set @s[tag=songEnd,scores={music=2440..}] music 0
#execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.christmas.dm record @s ~ ~ ~ 1000000 1.25 1

execute as @a[tag=songEnd,tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.christmas.dm record @s ~ ~ ~ 1000000 1.25 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/christmas/deathmatch 3040t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/christmas/deathmatch 2440t