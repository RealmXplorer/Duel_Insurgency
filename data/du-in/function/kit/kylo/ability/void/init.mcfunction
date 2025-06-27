#If goner is close
execute if entity @e[type=skeleton,distance=0.05..5,tag=gonerThing] run function du-in:kit/kylo/ability/void/success

#If goner is too far
execute unless entity @e[type=skeleton,distance=0.05..5,tag=gonerThing] run function du-in:kit/all/ability/titles/far

#End Ability
tag @s remove kitActions