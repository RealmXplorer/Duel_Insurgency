#Ability
execute if entity @s[level=1] run function du-in:kit/slime/ability/item
execute if entity @s[tag=kitActions] run function du-in:kit/slime/ability/init

#Character Specific (Cannot be used by Villager
execute if entity @s[tag=!stolen] run function du-in:kit/slime/constant