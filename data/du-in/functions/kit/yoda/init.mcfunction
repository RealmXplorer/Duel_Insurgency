# Ability ITEM #
# execute if entity @s[level=1] run function du-in:kit/yoda/ability/item

#Use ability
# execute if entity @s[tag=kitActions] run function du-in:kit/yoda/ability/init

execute if entity @s[scores={yodaTimer=0..}] run function du-in:kit/yoda/ability/timer

#NON VILLAGER
execute if entity @s[tag=!stolen] run function du-in:kit/yoda/constant