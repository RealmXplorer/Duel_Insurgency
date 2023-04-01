effect clear @s minecraft:invisibility
effect clear @s minecraft:jump_boost
effect clear @s[tag=sabotaged] minecraft:slowness

tag @s remove sabotaged
tag @s[tag=stolen] add kitDone
scoreboard players reset @s floweyHitTimer