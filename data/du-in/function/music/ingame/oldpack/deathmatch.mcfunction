#DEATHMATCH#
#scoreboard players set @s[tag=song,scores={music=1100..}] music 0
#execute if entity @s[tag=song,scores={music=1}] run playsound minecraft:oldmusic.dm record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac, tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:oldmusic.dm record @s ~ ~ ~ 1000000 1 1


#scoreboard players set @s[tag=songEnd,scores={music=1100..}] music 0
#execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:oldmusic.dmend record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,tag=oldPack,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac, tag=!jackBlack,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:oldmusic.dmend record @s ~ ~ ~ 1000000 1 1

schedule function du-in:music/ingame/oldpack/deathmatch 1100t
#execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/oldpack/deathmatch 1100t