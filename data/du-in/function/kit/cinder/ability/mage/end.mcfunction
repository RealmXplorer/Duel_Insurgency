clear @s #du-in:ability
xp set @s[tag=!stolen] 350 levels

# execute if entity @s[tag=stolen] run tag @s add kitDone
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/end/revert

tag @s remove sabotaged
tag @s remove empower
tag @s remove kitActions