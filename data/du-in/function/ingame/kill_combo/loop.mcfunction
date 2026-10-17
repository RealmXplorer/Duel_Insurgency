scoreboard players set #comboTimer running 1

execute as @a[tag=comboDuration] at @s run function du-in:ingame/kill_combo/timer

execute if entity @a[tag=comboDuration] run return run schedule function du-in:ingame/kill_combo/loop 1t
scoreboard players set #comboTimer running 0