scoreboard players set #willoShotDelay running 1
#Rage functions for all enraged players
execute as @a[tag=revolverCooldown] at @s run function du-in:kit/willo/revolver/delay/timer

#Continue timer if another player has rage
execute if entity @a[tag=revolverCooldown] run return run schedule function du-in:kit/willo/revolver/delay/loop 1t replace
scoreboard players set #willoShotDelay running 0