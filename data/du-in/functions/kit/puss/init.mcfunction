# Ability ITEM #
# execute if entity @s[level=1] run function du-in:kit/puss/ability/item

#Use ability
# execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/puss/ability/default_init
# execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/puss/ability/void/init

execute if entity @s[scores={pussTimer=-1..}] run function du-in:kit/puss/ability/self_timer

#NON VILLAGER
execute if entity @s[tag=!stolen] run function du-in:kit/puss/constant