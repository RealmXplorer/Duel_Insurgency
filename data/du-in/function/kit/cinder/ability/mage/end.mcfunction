clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 350 levels

execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove kitActions