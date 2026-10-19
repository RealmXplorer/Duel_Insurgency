scoreboard players set #parryStart running 1
execute as @a[tag=parryStart] at @s run function du-in:kit/all/parry/buffer

execute if entity @a[tag=parryStart] run return run schedule function du-in:kit/all/parry/buffer_loop 1t
scoreboard players set #parryStart running 0