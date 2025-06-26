#Random kit mode clears
execute unless entity @s[tag=grave] run function du-in:kit/all/reset
tag @s[tag=!grave] add random
clear @s
clear @s minecraft:emerald
attribute @s armor base set 0
attribute @s max_health base set 20
execute if entity @s[tag=!stolen,scores={kit=2}] run tag @s add undead
execute if entity @s[tag=!stolen,scores={kit=5}] run tag @s add undead