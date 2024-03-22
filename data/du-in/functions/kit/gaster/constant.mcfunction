execute if entity @s[scores={hit=5..}] unless entity @s[scores={gastSkin=2}] run function du-in:kit/gaster/sounds/hit
execute if entity @s[scores={hit=5..,gastSkin=2}] run function du-in:kit/gaster/sounds/spamhit
execute if entity @s[scores={jump=1..},tag=!gasterInvisible] unless entity @s[scores={gastSkin=2}] run function du-in:kit/gaster/sounds/jump

#Weapons#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!gasterInvisible,tag=!pussFear] run function du-in:kit/gaster/weapon

# GASTER #
#execute if entity @s[tag=armor,tag=!gasterInvisible] run function du-in:kit/gaster/armor

#Attributes#
attribute @s minecraft:generic.movement_speed base set 0.13
attribute @s[tag=!gasterInvisible] generic.knockback_resistance base set 0.04

#THIS NEXT EXPERIMENT WILL BE
#VERY
#VERY
#INTERESTING