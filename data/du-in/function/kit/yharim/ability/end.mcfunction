tag @s remove cooldown
tag @s remove sabotaged
scoreboard players reset @s yharimTimer
xp set @s[tag=!stolen] 340 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
