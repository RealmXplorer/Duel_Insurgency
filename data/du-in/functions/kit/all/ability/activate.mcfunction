#execute unless entity @s[tag=ringMap,tag=!inRing] unless entity @s[scores={kit=8},tag=stolen] unless entity @s[scores={kit=1..16,kit=19..20,kit=23,kit=1000..1004}] run tag @s add kitParticles
execute if entity @s[predicate=!du-in:second_held] unless entity @s[tag=ringMap,tag=!inRing] run tag @s add kitActions
scoreboard players reset @s kitUse