xp set @s[tag=!stolen] 360 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove cooldown
tag @s remove empower
scoreboard players reset @s palpTimer