execute if entity @s[scores={hit=5..}] run function du-in:kit/asgore/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/asgore/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/asgore/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/asgore/sounds/jump

# ASGORE # - Now in kit/all/armor/armor
#execute if entity @s[tag=armor] run function du-in:kit/asgore/armor

#TRIDENT#
execute if entity @s[scores={trident=1..}] run function du-in:kit/asgore/passive/trident

#End trident cooldown
execute if entity @s[tag=thrown,scores={tridentTimer=0..}] run function du-in:kit/asgore/passive/timer

#Weapon
# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!thrown,tag=!teamDead] run function du-in:kit/asgore/weapon

#ASGORE ATTRIBUTES#
#Size
# execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/huge
# #Weight and speed
# #attribute @s minecraft:generic.armor_toughness base set 1
# attribute @s minecraft:generic.movement_speed base set 0.125
# attribute @s generic.knockback_resistance base set 0.15

#MY KING
#TRULY A SHAME
#WHAT HAS HAPPENED TO YOU
#WORRY NOT MY LORD
#OUR DAY OF GLORY
#IS AT HAND