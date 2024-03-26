execute if entity @s[scores={hit=5..}] run function du-in:kit/vader/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#Weapon#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/vader/weapon

#Armor#
#execute if entity @s[tag=armor] run function du-in:kit/vader/armor

#Attribute#
attribute @s minecraft:generic.movement_speed base set 0.125
attribute @s minecraft:generic.armor_toughness base set 1.5
attribute @s minecraft:generic.knockback_resistance base set 0.175

execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/big

#Breathing and berserk
function du-in:kit/vader/berserk