#Ability
#execute if entity @s[tag=kitActions] run function du-in:kit/palps/ability/init

#Ability item#
execute if entity @s[level=1] unless entity @s[scores={palpTimer=-99..}] run function du-in:kit/palps/ability/item

#Ability function
execute if entity @s[scores={palpTimer=-99..}] run function du-in:kit/palps/ability/stealing

#Attributes#
execute unless entity @s[scores={palpTimer=2..}] run attribute @s[tag=!deathMark] minecraft:generic.armor base set 0

#NON VILLAGER
execute if entity @s[tag=!stolen] run function du-in:kit/palps/constant