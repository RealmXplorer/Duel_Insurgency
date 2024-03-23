#Zombie sounds#
execute if entity @s[scores={hit=5..}] run function du-in:kit/zombie/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/zombie/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/zombie/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/zombie/sounds/jump


# ZOMBIE Armor# -Armor has been moved to kit/all/armor/armor
# execute if entity @s[tag=armor] run function du-in:kit/zombie/armor

#Give Zombie Weapon#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/zombie/weapon

#Weight#
attribute @s generic.movement_speed base set 0.135
attribute @s generic.knockback_resistance base set 0.04