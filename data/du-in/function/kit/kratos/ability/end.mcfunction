tag @s remove cooldown
tag @s remove sabotaged
tag @s remove kratosRage
scoreboard players reset @s kratosTimer
xp set @s[tag=!stolen] 340 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
