#Gives tag "kitActions" when carrot on a stick is rightclicked
execute if entity @s[predicate=!du-in:second_held] unless entity @s[tag=ringMap,tag=!inRing] run tag @s add kitActions
scoreboard players reset @s kitUse