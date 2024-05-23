execute if entity @s[scores={hit=5..}] run function du-in:kit/spider/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/spider/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/spider/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/spider/sounds/jump

#Attributes#
attribute @s generic.movement_speed base set 0.135
attribute @s generic.knockback_resistance base set 0.03