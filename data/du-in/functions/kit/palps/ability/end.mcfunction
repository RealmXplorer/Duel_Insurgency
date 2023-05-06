#attribute @s[tag=!deathMark] minecraft:generic.armor base set 0
xp set @s[tag=!stolen] 360 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
scoreboard players reset @s palpTimer