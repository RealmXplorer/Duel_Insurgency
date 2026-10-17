scoreboard players set #parry running 1
execute as @a[tag=parry] at @s run function du-in:kit/all/parry/in_parry

execute if entity @a[tag=parry] run return run schedule function du-in:kit/all/parry/loop 1t
scoreboard players set #parry running 0