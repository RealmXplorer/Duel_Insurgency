execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/chara/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/chara/sounds/jump

#CONSTANTS#
execute if entity @s[scores={charaTimer2=1..}] run particle minecraft:ash ~ ~1.5 ~ 2 2 2 0 10 force

execute if entity @s[tag=kitActions] run function du-in:kit/chara/ability/init

# CHARA ARMOR#
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={weapCount=1}] run function du-in:kit/chara/weapon
#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] stone_sword 0

execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/chara/armor

execute if entity @s[level=1] run function du-in:kit/chara/ability/item

attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
#.11
attribute @s[tag=!stolen,tag=!pussFear,tag=!parry] generic.knockback_resistance base set 0.035

#A shame the one who looks for me has not yet found me.
#Maybe, you and I, can find him first.