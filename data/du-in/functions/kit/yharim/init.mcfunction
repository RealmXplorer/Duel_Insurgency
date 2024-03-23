#Ability item#
execute if entity @s[level=1] run function du-in:kit/yharim/ability/item

#Activate ability
#execute if entity @s[tag=kitActions] run function du-in:kit/yharim/ability/init

#Ability timer
execute if entity @s[scores={yharimTimer=0..}] run function du-in:kit/yharim/ability/timer

#NON VILLAGER
execute if entity @s[tag=!stolen] run function du-in:kit/yharim/constant