#Sounds#
execute if entity @s[scores={hit=5..}] run function du-in:kit/avatar/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/avatar/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/avatar/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/avatar/sounds/jump

#ATTRIBUTES
attribute @s minecraft:generic.movement_speed base set 0.13
attribute @s generic.knockback_resistance base set 0.035
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/small
