#Sounds
execute if entity @s[scores={hit=5..},tag=hasRing] run function du-in:kit/sauron/sounds/hit
execute if entity @s[scores={hit=5..},tag=!hasRing] run function du-in:kit/sauron/sounds/wraith_hit
execute if entity @s[scores={step=150..}] run function du-in:kit/sauron/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/sauron/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/sauron/sounds/jump

execute if entity @s[scores={sauronTimer=0..}] run function du-in:kit/sauron/ability/timer

#Attributes
execute if entity @s[tag=!hasRing] run function du-in:kit/sauron/weak_attributes
execute if entity @s[tag=hasRing] run function du-in:kit/sauron/ring_attributes
