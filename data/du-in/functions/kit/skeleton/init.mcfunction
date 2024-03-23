#Ability
execute if entity @s[level=1] run function du-in:kit/skeleton/ability/item

execute if entity @s[tag=kitActions] run function du-in:kit/skeleton/ability/init

execute unless items entity @s[scores={skeletonMode=1..}] hotbar.* #minecraft:arrows run function du-in:kit/skeleton/ability/end

execute if entity @s[tag=!stolen] run function du-in:kit/skeleton/constant