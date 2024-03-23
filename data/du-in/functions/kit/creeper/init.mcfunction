#Activate Ability
#execute if entity @s[tag=kitActions] run function du-in:kit/creeper/ability/init

#Ability Timer
execute if entity @s[scores={creeperTimer=0..}] run function du-in:kit/creeper/ability/timer

#CREEPER#
execute if entity @s[level=1] run function du-in:kit/creeper/ability/item

#Non-Villager functions
execute if entity @s[tag=!stolen] run function du-in:kit/creeper/constant