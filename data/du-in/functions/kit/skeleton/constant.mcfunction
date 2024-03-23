execute if entity @s[scores={hit=5..}] run function du-in:kit/skeleton/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/skeleton/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/skeleton/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/skeleton/sounds/jump

# skeleton #
execute if entity @s[tag=armor] run function du-in:kit/skeleton/armor

#Ability
execute if entity @s[level=1] run function du-in:kit/skeleton/ability/item

execute if entity @s[tag=kitActions] run function du-in:kit/skeleton/ability/init

#Weapon
execute unless entity @s[scores={skeletonMode=1..}] unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!pussFear] run function du-in:kit/skeleton/weapon

execute if entity @s[tag=!teamDead] if entity @s[scores={skeletonMode=1..}] unless entity @s[scores={secCount=1}] run function du-in:kit/skeleton/bow

execute store result score @s secCount run clear @s[tag=!kitMenu] bow 0

execute unless items entity @s[scores={skeletonMode=1..}] hotbar.* #minecraft:arrows run function du-in:kit/skeleton/ability/end

#ATT#
attribute @s generic.knockback_resistance base set 0.015
