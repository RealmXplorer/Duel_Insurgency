execute if entity @s[scores={hit=5..},tag=!stolen] run function du-in:kit/nick/sounds/hit
execute if entity @s[scores={step=150..},tag=!stolen] run function du-in:kit/nick/sounds/step
execute if entity @s[scores={sprint=150..},tag=!stolen] run function du-in:kit/nick/sounds/step
execute if entity @s[scores={jump=1..},tag=!stolen] run function du-in:kit/nick/sounds/jump

tag @s[tag=!stolen] add wilde

#Nick Wilde#
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={weapCount=1}] run function du-in:kit/nick/weapon
#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

#Ability#
execute if entity @s[level=1] run function du-in:kit/nick/ability/item

execute if entity @s[tag=kitActions] run function du-in:kit/nick/ability/init

#Armor#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/nick/armor

#Attributes#
attribute @s[tag=!stolen,tag=!pussFear] generic.knockback_resistance base set 0.01
effect give @s[tag=!stolen] minecraft:night_vision infinite 100 true
attribute @s[tag=!stolen] generic.movement_speed base set 0.14
#.12
