#Movement sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/yoda/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/yoda/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/yoda/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

# ARMOR #
# execute if entity @s[tag=armor] run function du-in:kit/yoda/armor

#Weapon#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/yoda/weapon

#Base movement speed#
attribute @s generic.movement_speed base set 0.1525

#Base Size
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/tiny

#Base Weight
attribute @s generic.knockback_resistance base set 0