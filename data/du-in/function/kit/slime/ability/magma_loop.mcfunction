scoreboard players set #magmaLoop running 1

execute as @a[tag=magma] at @s run function du-in:kit/slime/ability/timer

execute if entity @a[tag=magma] run return run schedule function du-in:kit/slime/ability/magma_loop 1t
scoreboard players set #magmaLoop running 0