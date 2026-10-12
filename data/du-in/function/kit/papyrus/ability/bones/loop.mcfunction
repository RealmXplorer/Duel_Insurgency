scoreboard players set #papyrusFind running 1
#Rage functions for all enraged players
execute as @e[type=marker,tag=papyrusFind] at @s run function du-in:kit/papyrus/ability/bones/timer

#Continue timer if another player has rage
execute if entity @e[type=marker,tag=papyrusFind] run return run schedule function du-in:kit/papyrus/ability/bones/loop 1t replace
scoreboard players set #papyrusFind running 0