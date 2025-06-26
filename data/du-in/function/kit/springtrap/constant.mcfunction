execute if entity @s[scores={hit=5..}] run function du-in:kit/springtrap/events/hit
execute if entity @s[scores={step=175..}] run function du-in:kit/springtrap/events/step
execute if entity @s[scores={sprint=175..}] run function du-in:kit/springtrap/events/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/springtrap/events/jump

#ARMOR# - Now in kit/all/armor/armor
# execute if entity @s[tag=armor] run function du-in:kit/springtrap/armor

# Weapons #
#execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/springtrap/weapon

#Attributes#
execute if entity @s[predicate=!du-in:effect/is_on_fire,tag=!springLock] run function du-in:kit/springtrap/passive/default

#Burning attributes for if he is on fire.
execute if entity @s[predicate=du-in:effect/is_on_fire] run function du-in:kit/springtrap/passive/burn