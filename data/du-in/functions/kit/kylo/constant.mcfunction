execute if entity @s[scores={hit=5..}] run function du-in:kit/kylo/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#ARMOR#
# execute if entity @s[tag=armor] run function du-in:kit/kylo/armor

#WEAPON#
# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/kylo/weapon

#Attributes#
attribute @s generic.knockback_resistance base set 0.02
attribute @s generic.movement_speed base set 0.145
