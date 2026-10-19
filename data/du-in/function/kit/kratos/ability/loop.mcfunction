scoreboard players set #kratosDuration running 1

execute as @a[tag=kratosDuration] at @s run function du-in:kit/kratos/ability/timer

execute if entity @a[tag=kratosDuration] run return run schedule function du-in:kit/kratos/ability/loop 1t
scoreboard players set #kratosDuration running 0