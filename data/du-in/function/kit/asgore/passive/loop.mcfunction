scoreboard players add #tridentThrown running 1
execute as @a[tag=thrown] at @s run function du-in:kit/asgore/passive/timer

execute if entity @a[tag=thrown] run return run schedule function du-in:kit/asgore/passive/loop 1t
scoreboard players set #tridentThrown running 0