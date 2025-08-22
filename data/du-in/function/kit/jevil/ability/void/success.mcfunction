execute if entity @s[tag=!neoChaos] run scoreboard players set @e[type=skeleton,distance=.05..4] jevilTimer 17
execute if entity @s[tag=!neoChaos] run tag @e[type=skeleton,distance=.05..4] add jevilDuration

execute if entity @s[tag=neoChaos] run scoreboard players set @e[type=skeleton] jevilTimer 19
execute if entity @s[tag=neoChaos] run tag @e[type=skeleton] add jevilDuration

clear @s #du-in:ability
xp set @s[tag=!stolen] 360 levels
particle minecraft:note ~ ~2.25 ~ .01 .5 .01 0.25 3 force @a
playsound minecraft:ralsei.sing master @a ~ ~ ~ 100 1
particle minecraft:crit ~ ~2.25 ~ 3 3 3 0.25 100 force @a
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ .5 .75
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone