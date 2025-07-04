# execute if entity @s[scores={hit=5..}] run function du-in:kit/cinder/events/hit
# execute if entity @s[scores={step=175..}] run function du-in:kit/cinder/events/step
# execute if entity @s[scores={sprint=175..}] run function du-in:kit/cinder/events/step
# execute if entity @s[scores={jump=1..}] run function du-in:kit/cinder/events/jump

#Attributes#
execute if entity @s[predicate=!du-in:effect/is_on_fire] run function du-in:kit/cinder/passive/default

#Burning attributes for if he is on fire.
execute if entity @s[predicate=du-in:effect/is_on_fire] run function du-in:kit/cinder/passive/burn


#Check for if they have secondary
execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0

execute unless entity @s[scores={secCount=1}] unless entity @s[scores={classSwapTimer=1..}] if entity @s[tag=!teamDead] run function du-in:kit/cinder/switch/item

#Weapon switch cooldown timer
execute if entity @s[scores={classSwapTimer=-1..}] run function du-in:kit/cinder/switch/timer

#Use ability
execute if entity @s[tag=secKitActions] run function du-in:kit/cinder/switch/switch

#ODD