#CAPTURE THE FLAG#
# scoreboard players set @s[tag=song,scores={music=2380..}] music 0
# execute if entity @s[tag=song,scores={music=1},tag=!songEnd] run playsound minecraft:music.legacy.ctf record @s ~ ~ ~ 10000000000000000000000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=legacy,tag=!oldPack,tag=!musicOff] at @s run playsound minecraft:music.legacy.ctf record @s ~ ~ ~ 10000000000000000000000000 1 1

#END OF ROUND#
# scoreboard players set @s[tag=songEnd,scores={music=2880..}] music 0
# execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.legacy.ctfend record @s ~ ~ ~ 10000000 1 1

execute as @a[tag=songEnd,tag=legacy,tag=!oldPack,tag=!musicOff] at @s run playsound minecraft:music.legacy.ctfend record @s ~ ~ ~ 10000000 1 1


execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/legacy/ctf 2380t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/legacy/ctf 2880t