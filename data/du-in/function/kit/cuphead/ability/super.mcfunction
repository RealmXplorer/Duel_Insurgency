scoreboard players remove @s cupTimer 1
#particle minecraft:electric_spark ~ ~1 ~ 0 0 0 1.5 25 force
#execute if entity @s[predicate=du-in:chance/half_chance] run particle minecraft:instant_effect ~ ~1 ~ 0.25 0.5 0.25 0.5 5 force
attribute @s generic.knockback_resistance modifier add cuphead_ult 1.0 add_value
#attribute @s generic.knockback_resistance base set 1
particle minecraft:instant_effect ~ ~1 ~ 0.25 0.25 0.25 0.5 4 force
effect give @s resistance 1 255 true


attribute @s[scores={cupTimer=..0}] generic.knockback_resistance modifier remove cuphead_ult
tag @s[tag=stolen,scores={cupTimer=..0}] add kitDone
scoreboard players reset @s[scores={cupTimer=..0}] cupTimer

