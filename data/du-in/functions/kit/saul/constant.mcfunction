#Movement sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/saul/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/saul/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/saul/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#
tag @a[tag=!saul,tag=!legMusicOff,tag=!void,tag=!ctfIngame,tag=!cqIngame] add saul

# ARMOR #
#execute if entity @s[tag=armor] run function du-in:kit/saul/armor

# Ability ITEM #
# execute if entity @s[level=1] run function du-in:kit/saul/ability/item

#Weapon#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/saul/weapon

#Use ability
#execute if entity @s[tag=kitActions] run function du-in:kit/saul/ability/init

#Base movement speed#
attribute @s minecraft:generic.movement_speed base set 0.1375

#Base Weight
attribute @s generic.knockback_resistance base set 0.35