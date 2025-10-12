#Activate Ability
#execute if entity @s[tag=kitActions] run function du-in:kit/creeper/ability/init

#Ability Timer
execute if entity @s[scores={creeperTimer=0..}] run function du-in:kit/creeper/ability/timer

execute if entity @s[tag=creeperMace,tag=airBlock] unless block ~ ~-1 ~ #du-in:zomb_invalid run tag @s remove airBlock
execute if entity @s[tag=creeperMace,tag=!airBlock] run function du-in:kit/creeper/ability/end_mace

#CREEPER#
#execute if entity @s[level=1] run function du-in:kit/creeper/ability/item

#Non-Villager functions
#execute if entity @s[tag=!stolen] run function du-in:kit/creeper/constant