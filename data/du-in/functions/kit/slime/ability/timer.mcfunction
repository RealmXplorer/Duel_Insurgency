#Magma timer
scoreboard players remove @s magmaTimer 1

#End Ability
execute if entity @s[scores={magmaTimer=..1}] run function du-in:kit/slime/ability/end

effect give @s minecraft:fire_resistance 1 0 true