#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/runza/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/runza/weapon
#Ability Item#
# execute if entity @s[level=1] run function du-in:kit/runza/ability/item

# execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/runza/ability/init
# execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/runza/ability/void/init

#RUNZA#
#execute if entity @s[tag=armor,tag=!bigChungus] run function du-in:kit/runza/armor

attribute @s minecraft:generic.movement_speed base set 0.135
attribute @s generic.knockback_resistance base set 0.04