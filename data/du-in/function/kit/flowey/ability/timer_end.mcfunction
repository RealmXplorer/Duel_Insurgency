effect clear @s minecraft:invisibility
attribute @s minecraft:jump_strength modifier remove flowey_jump
effect clear @s[tag=sabotaged] minecraft:slowness

xp set @s[tag=!stolen] 360 levels
clear @s minecraft:carrot_on_a_stick

tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove cooldown
scoreboard players reset @s floweyHitTimer