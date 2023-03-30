execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/player/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump


#CONSTANTS#
execute if score #main titleTimer2 matches 21 run item replace entity @s hotbar.8 with minecraft:arrow 4

# Armor #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/player/armor

#Ability#
execute if entity @s[level=1] run function du-in:kit/player/ability/item


execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/player/weapon
execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={secCount=1}] run function du-in:kit/player/bow

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] wooden_sword 0
execute store result score @s[tag=!stolen] secCount run clear @s[tag=!kitMenu] bow 0

execute if entity @s[tag=kitActions] run function du-in:kit/player/ability/init

#ATT#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
#.1075
attribute @s[tag=!stolen,tag=!pussFear,tag=!parry] generic.knockback_resistance base set 0.04

#SO THIS POWER...
#OF DETERMINATION
#IT IS NOT UNIQUE TO OUR WORLD?
#HOW CURIOUS
#VERY
#VERY
#CURIOUS