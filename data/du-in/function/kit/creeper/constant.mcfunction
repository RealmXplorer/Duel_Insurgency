execute if entity @s[scores={hit=5..}] run function du-in:kit/creeper/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/creeper/sounds/jump

# CREEPER #
#execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/creeper/weapon

#Armor# - Now in kit/all/armor/armor
# execute if entity @s[tag=armor] run function du-in:kit/creeper/armor

attribute @s minecraft:generic.movement_speed base set 0.135
#.11
attribute @s generic.knockback_resistance base set 0.03