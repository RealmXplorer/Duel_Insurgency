#KING OF THE HILL#
##COPYRIGHT
# scoreboard players set @s[tag=song,scores={music=2720..}] music 0
# execute if entity @s[tag=song,scores={music=1}] run playsound minecraft:music.christmas.koth record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.christmas.koth record @s ~ ~ ~ 1000000 1 1

# scoreboard players set @s[tag=songEnd,scores={music=2180..}] music 0
# execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:music.christmas.koth record @s ~ ~ ~ 1000000 1.25 1

execute as @a[tag=songEnd,tag=christmas,tag=!oldPack,tag=!legacy,tag=!halloween,tag=!saac,tag=!bigChungus,tag=!saul,tag=!musicOff] at @s run playsound minecraft:music.christmas.koth record @s ~ ~ ~ 1000000 1.25 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/christmas/koth 2720t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/christmas/koth 2180t