#Ability#
execute if entity @s[level=1] run function du-in:kit/ralsei/ability/item

# execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/ralsei/ability/default_init
# execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/ralsei/ability/void/init

#NON VILLAGER
execute if entity @s[tag=!stolen] run function du-in:kit/ralsei/constant