advancement revoke @s only du-in:utility/damage

#Reset natural regen
scoreboard players reset @s healthTimer
scoreboard players set @s regenTimer 0

#Cancel Void event
execute if entity @s[tag=voidReady] run function du-in:void/interact/reaffirm

#Disrupt Pawbert's ability
execute if entity @s[tag=pawbertInvisible] run function du-in:kit/pawbert/ability/disrupt