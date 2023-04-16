effect clear @s minecraft:invisibility
effect clear @s minecraft:jump_boost
effect clear @s[tag=sabotaged] minecraft:slowness

xp set @s[tag=!stolen] 360 levels
clear @s minecraft:carrot_on_a_stick

tag @s remove sabotaged
tag @s[tag=stolen] add kitDone
scoreboard players reset @s floweyHitTimer