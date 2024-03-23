#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/golem/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/golem/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/golem/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/golem/sounds/jump

# WEAPON #
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/golem/weapon

#ARMOR# - Now in kit/all/armor/armor
# execute if entity @s[tag=armor] run function du-in:kit/golem/armor

#ATTRIBUTES#
attribute @s minecraft:generic.movement_speed base set 0.125
attribute @s generic.knockback_resistance base set 0.25
execute unless entity @a[tag=partyLeader,tag=scaleMode] run function du-in:kit/all/size/huge