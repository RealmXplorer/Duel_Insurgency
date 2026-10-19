scoreboard players set #hitCombo running 1

execute as @a[scores={comboScore=1..,comboHitTimer=10..}] run function du-in:ingame/hit_combo/expire

execute if entity @a[scores={comboScore=1..}] run return run schedule function du-in:ingame/hit_combo/loop 1t
scoreboard players set #hitCombo running 0