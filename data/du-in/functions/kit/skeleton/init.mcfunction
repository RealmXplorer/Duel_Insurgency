#Ability
#execute if entity @s[level=1] run function du-in:kit/skeleton/ability/item

# execute if entity @s[tag=kitActions] run function du-in:kit/skeleton/ability/init

execute unless items entity @s[scores={skeletonMode=1..}] hotbar.* #minecraft:arrows run function du-in:kit/skeleton/ability/end


execute unless entity @s[scores={secCount=1}] if entity @s[scores={skeletonMode=1..}] if entity @s[tag=!teamDead] run function du-in:kit/skeleton/bow

execute store result score @s secCount run clear @s bow 0

execute if entity @s[tag=!stolen] run function du-in:kit/skeleton/constant