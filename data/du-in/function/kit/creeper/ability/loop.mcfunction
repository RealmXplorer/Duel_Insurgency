scoreboard players set #creeperTimer running 1
execute as @a[tag=creeperDuration] at @s run function du-in:kit/creeper/ability/timer

execute if entity @a[tag=creeperDuration] run return run schedule function du-in:kit/creeper/ability/loop 1t
scoreboard players set #creeperTimer running 0