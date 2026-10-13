scoreboard players set #floweyBurrow running 1

execute as @a[tag=floweyDuration] at @s run function du-in:kit/flowey/ability/burrow
#execute as @e[type=armor_stand,tag=floweyStem] at @s run function du-in:kit/flowey/ability/stem

execute if entity @a[tag=floweyDuration] run return run schedule function du-in:kit/flowey/ability/loop 1t
scoreboard players set #floweyBurrow running 0