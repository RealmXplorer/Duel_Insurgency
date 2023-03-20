execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/palps/sounds/hit

#Weapons#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!stolen,tag=!teamDead] run function du-in:kit/palps/weapon
#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

#Armor#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/palps/armor

execute if entity @s[tag=kitActions] run function du-in:kit/palps/ability/init

#Ability item#
execute if entity @s[level=1] run function du-in:kit/palps/ability/item

#Ability function
execute if entity @s[scores={palpTimer=-99..}] run function du-in:kit/palps/ability/stealing

#Attributes#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
#.1075
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.04

execute unless entity @s[scores={palpTimer=2..},tag=!deathMark] run attribute @s minecraft:generic.armor base set 0

execute if entity @s[scores={healthTimer=220..},tag=!stolen] run scoreboard players add @s regenTimer 1

#HE LISTENS
#ONLY TO THE DARK
#THE DEEP
#DEEP
#DARK
#HE WILL LISTEN
#TO ME