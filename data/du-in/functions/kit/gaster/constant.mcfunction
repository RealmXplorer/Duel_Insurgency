execute if entity @s[tag=!stolen,scores={hit=5..}] unless entity @s[scores={gastSkin=2}] run function du-in:kit/gaster/sounds/hit
execute if entity @s[tag=!stolen,scores={hit=5..,gastSkin=2}] run function du-in:kit/gaster/sounds/spamhit
execute if entity @s[tag=!stolen,scores={jump=1..},tag=!gasterInvisible] unless entity @s[scores={gastSkin=2}] run function du-in:kit/gaster/sounds/jump

#Weapons#
execute if entity @s[tag=!teamDead,tag=!stolen,tag=!gasterInvisible] unless entity @s[scores={weapCount=1}] run function du-in:kit/gaster/weapon

# GASTER #
execute if entity @s[tag=armor,tag=!stolen,tag=!gasterInvisible] run function du-in:kit/gaster/armor

execute if entity @s[level=1,tag=!gasterInvisible] run function du-in:kit/gaster/ability/item

execute if entity @s[tag=kitActions] run function du-in:kit/gaster/ability/init

execute if entity @s[scores={gasterTimer=-1..}] run function du-in:kit/gaster/ability/shattered

#Attributes#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.13
#.105
attribute @s[tag=!stolen,tag=!pussFear,tag=!parry,tag=!gasterInvisible] generic.knockback_resistance base set 0.04
attribute @s[tag=gasterInvisible] minecraft:generic.knockback_resistance base set 10

#THIS NEXT EXPERIMENT WILL BE
#VERY
#VERY
#INTERESTING