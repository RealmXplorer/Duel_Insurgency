#Test for team score if there is a player in radius
execute if entity @e[type=skeleton,tag=gonerThing,distance=0.05..5] run function du-in:kit/papyrus/ability/void/success


#If enemy is too far
execute unless entity @e[type=skeleton,tag=gonerThing,distance=0.05..5] run function du-in:kit/all/ability/titles/far

tag @s remove kitActions