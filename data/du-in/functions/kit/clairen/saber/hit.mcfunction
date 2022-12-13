particle minecraft:dust 0 0.95 1 2 ~ ~.5 ~ .5 .5 .5 0 10
execute at @s run playsound minecraft:clairen.tipper master @a ~ ~ ~ 1 1
#effect give @s minecraft:poison 3 0

tag @s add afflicted

scoreboard players set #main saberRaycast 70