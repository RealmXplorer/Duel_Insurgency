#If player is near and valid, run
execute if entity @e[type=skeleton,tag=gonerThing,distance=0.05..5] run function du-in:kit/vader/ability/void/success

#If player is too far
execute unless entity @e[type=skeleton,tag=gonerThing,distance=0.05..5] run function du-in:kit/all/ability/titles/far

#End ability
tag @s remove kitActions