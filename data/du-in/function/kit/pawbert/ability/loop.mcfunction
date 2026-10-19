scoreboard players set #pawbertInvisible running 1

execute as @a[tag=pawbertInvisible] at @s run function du-in:kit/pawbert/ability/timer

execute if entity @a[tag=pawbertInvisible] run return run schedule function du-in:kit/pawbert/ability/loop 1t
scoreboard players set #pawbertInvisible running 0