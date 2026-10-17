scoreboard players set #charaDuration running 1

execute as @a[tag=charaDuration,tag=!kitMenu] at @s run function du-in:kit/chara/ability/timer

execute if entity @a[tag=charaDuration] run return run schedule function du-in:kit/chara/ability/loop 1t
scoreboard players set #charaDuration running 0