scoreboard players set #papyrusFind running 1
#Rage functions for all enraged players
execute as @e[type=marker,tag=papyrusFind] at @s run function du-in:kit/papyrus/ability/bones/timer
execute as @e[type=armor_stand,tag=papyrusBone] at @s run function du-in:kit/papyrus/ability/bones/stand

#Continue timer if another player has rage
#execute if entity @e[type=armor_stand,tag=papyrusBone] run schedule function du-in:kit/papyrus/ability/bones/loop 1t replace
execute if entity @e[tag=papyrusObject,type=#du-in:papyrus_object] run return run schedule function du-in:kit/papyrus/ability/bones/loop 1t replace
scoreboard players set #papyrusFind running 0