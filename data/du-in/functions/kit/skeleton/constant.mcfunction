execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/skeleton/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/skeleton/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/skeleton/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/skeleton/sounds/jump

# skeleton #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/skeleton/armor

#Ability
execute if entity @s[level=1] run function du-in:kit/skeleton/ability/item

execute if entity @s[tag=kitActions] run function du-in:kit/skeleton/ability/init

#Weapon
execute unless entity @s[scores={skeletonMode=1..}] unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!stolen,tag=!pussFear] run function du-in:kit/skeleton/weapon

execute if entity @s[tag=!teamDead,tag=!stolen] if entity @s[scores={skeletonMode=1..}] unless entity @s[scores={secCount=1}] run function du-in:kit/skeleton/bow

execute store result score @s[tag=!stolen] secCount run clear @s[tag=!kitMenu] bow 0

execute unless items entity @s[scores={skeletonMode=1..}] hotbar.* #minecraft:arrows run function du-in:kit/skeleton/ability/end

#ATT#
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.015
