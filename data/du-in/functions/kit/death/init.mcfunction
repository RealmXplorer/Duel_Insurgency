# Ability ITEM #
# execute if entity @s[level=1] run function du-in:kit/death/ability/item

#Use ability
# execute if entity @s[tag=kitActions] run function du-in:kit/death/ability/init

#Death ability
execute if entity @s[scores={deathAbilityTimer=0..}] run function du-in:kit/death/ability/ability_timer

#NON VILLAGER
execute if entity @s[tag=!stolen] run function du-in:kit/death/constant