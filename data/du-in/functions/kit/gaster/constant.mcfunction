execute if entity @s[tag=!stolen,scores={hit=5..}] unless entity @s[scores={gastSkin=2}] run function du-in:kit/gaster/sounds/hit
execute if entity @s[tag=!stolen,scores={hit=5..,gastSkin=2}] run function du-in:kit/gaster/sounds/spamhit
execute if entity @s[tag=!stolen,scores={jump=1..}] unless entity @s[scores={gasterTimer=1..}] unless entity @s[scores={gastSkin=2}] run function du-in:kit/gaster/sounds/jump

#Weapons#
execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] unless entity @s[scores={gasterTimer=1..}] run function du-in:kit/gaster/weapon
#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

tag @s add gaster

# GASTER #
execute if entity @s[tag=armor,tag=!stolen] unless entity @s[scores={gasterTimer=-99..}] run function du-in:kit/gaster/armor

execute if entity @s[level=1] unless entity @s[scores={gasterTimer=-99..}] run function du-in:kit/gaster/ability/item

execute if entity @s[tag=kitActions] run function du-in:kit/gaster/ability/init

execute if entity @s[scores={gasterTimer=-1..}] run function du-in:kit/gaster/ability/shattered

#Attributes#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.13
#.105
execute unless entity @s[scores={gasterTimer=1..}] run attribute @s[tag=!stolen] generic.knockback_resistance base set 0.04
execute if entity @s[scores={gasterTimer=1..}] run attribute @s minecraft:generic.knockback_resistance base set 10

#THIS NEXT EXPERIMENT WILL BE
#VERY
#VERY
#INTERESTING