effect clear @s minecraft:invisibility
attribute @s minecraft:jump_strength modifier remove flowey_jump
effect clear @s[tag=sabotaged] minecraft:slowness
execute if entity @s[tag=!stolen] run function du-in:kit/flowey/weapon

xp set @s[tag=!stolen] 360 levels
clear @s #du-in:ability

tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove cooldown
scoreboard players reset @s floweyHitTimer

function du-in:kit/flowey/weapon