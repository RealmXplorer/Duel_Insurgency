xp set @s[tag=!stolen] 360 levels
# execute if entity @s[tag=stolen] run tag @s add kitDone
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/end/revert

tag @s remove lifeStealing
tag @s remove sabotaged
tag @s remove cooldown
tag @s remove empower
scoreboard players reset @s palpTimer