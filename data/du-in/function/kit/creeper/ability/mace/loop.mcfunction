scoreboard players set #creeperMace running 1

execute as @a[tag=creeperMace] at @s run function du-in:kit/creeper/ability/mace/test

execute if entity @a[tag=creeperMace] run return run schedule function du-in:kit/creeper/ability/mace/loop 1t
scoreboard players set #creeperMace running 0