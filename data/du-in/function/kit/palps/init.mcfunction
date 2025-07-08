#Ability function
execute if entity @s[scores={palpTimer=-99..}] run function du-in:kit/palps/ability/stealing

#Attributes#
# execute unless entity @s[scores={palpTimer=2..}] run attribute @s[tag=!deathMark] minecraft:armor base set 0

#Decreased Health timer
# execute if entity @s[tag=!stolen,scores={healthTimer=220..}] run scoreboard players add @s regenTimer 1

#NON VILLAGER
#execute if entity @s[tag=!stolen] run function du-in:kit/palps/constant