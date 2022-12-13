scoreboard players remove @s cupTimer 1
#particle minecraft:electric_spark ~ ~1 ~ 0 0 0 1.5 25 force
#execute if entity @s[predicate=du-in:half_chance] run particle minecraft:instant_effect ~ ~1 ~ 0.25 0.5 0.25 0.5 5 force
attribute @s generic.knockback_resistance base set 1
particle minecraft:instant_effect ~ ~1 ~ 0.25 0.25 0.25 0.5 4 force
execute if entity @s[scores={cupHit=3..}] run effect give @s resistance 2 255 true
scoreboard players reset @s cupHit

tag @s[tag=stolen,scores={cupTimer=..0}] add kitDone
scoreboard players reset @s[scores={cupTimer=..0}] cupTimer

