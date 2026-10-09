scoreboard players set #venom running 1
#Rage functions for all enraged players
execute as @a[tag=injected] at @s run function du-in:kit/pawbert/secondary/antidote/init

#Continue timer if another player has rage
execute if entity @a[tag=injected] run return run schedule function du-in:kit/pawbert/secondary/loop 1t replace
scoreboard players set #venom running 0