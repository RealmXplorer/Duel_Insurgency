#If player is in range and valid
execute if entity @e[type=skeleton,tag=gonerThing,distance=0.05..3,sort=nearest] run function du-in:kit/spider/ability/void/hit

#If player is too far
execute unless entity @e[type=skeleton,tag=gonerThing,distance=0.05..3,sort=nearest] run function du-in:kit/all/ability/far

#End ability
tag @s remove kitActions