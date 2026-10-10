scoreboard players set #scythe running 1
#Rage functions for all enraged players
execute as @e[type=item_display,tag=devilsKnife] at @s run function du-in:kit/jevil/neo_chaos/scythe


#Continue timer if another player has rage
execute if entity @e[type=item_display,tag=devilsKnife] run return run schedule function du-in:kit/jevil/neo_chaos/loop 1t replace
scoreboard players set #scythe running 0