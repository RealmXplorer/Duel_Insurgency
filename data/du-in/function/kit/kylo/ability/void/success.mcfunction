execute as @e[type=skeleton,distance=0.05..5,tag=gonerThing] run function du-in:kit/kylo/ability/void/hit

xp set @s[tag=!stolen] 360 levels
clear @s #du-in:ability

tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone