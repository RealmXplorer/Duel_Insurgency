scoreboard players set #floweyStem running 1

execute as @e[type=falling_block,tag=floweyStem] at @s run function du-in:kit/flowey/ability/stem/timer

execute if entity @e[type=falling_block,tag=floweyStem] run return run schedule function du-in:kit/flowey/ability/stem/loop 1t
scoreboard players set #floweyStem running 0