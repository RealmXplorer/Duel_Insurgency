advancement revoke @s only du-in:utility/damage

scoreboard players reset @s healthTimer
scoreboard players set @s regenTimer 0

execute if entity @s[tag=voidReady] run function du-in:void/interact/reaffirm