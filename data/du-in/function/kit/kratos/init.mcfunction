#Ability timer
execute if entity @s[scores={kratosTimer=0..}] run function du-in:kit/kratos/ability/timer

#NON VILLAGER
execute if entity @s[tag=!stolen] run function du-in:kit/kratos/constant