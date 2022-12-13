execute rotated as @s at @e[type=minecraft:marker,tag=vent,sort=random,limit=1] run tp @s ~ ~ ~
tag @s add ventDone
playsound minecraft:sus.vent master @a ~ ~ ~ 10000 1
playsound minecraft:sus.vent master @a ~ ~ ~ 10000 1

execute if entity @s[tag=ventDone] run function du-in:kit/impostor/vent/vent_done