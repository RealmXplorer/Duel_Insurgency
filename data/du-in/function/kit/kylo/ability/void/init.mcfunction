#If player is close
execute if entity @e[type=skeleton,distance=0.05..5,sort=nearest,tag=gonerThing] run function du-in:kit/kylo/ability/void/success

#If player is too far
execute unless entity @e[type=skeleton,distance=0.05..5,sort=nearest,tag=gonerThing] run function du-in:kit/all/ability/far

#execute as @a[tag=kitActions,scores={kit=16}] run tag @s remove kyloHit

#End Ability
tag @s remove kitActions