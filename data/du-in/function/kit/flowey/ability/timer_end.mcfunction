particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 0.5 0.6 0.5 2 100 force
#effect clear @s minecraft:invisibility
tag @s remove invisible
function du-in:kit/flowey/armor

attribute @s minecraft:jump_strength modifier remove flowey_jump
effect clear @s[tag=sabotaged] minecraft:slowness
execute if entity @s[tag=!stolen] run function du-in:kit/flowey/weapon

xp set @s[tag=!stolen] 360 levels
clear @s #du-in:ability

tag @s remove floweyDuration
tag @s remove sabotaged
tag @s remove empower
# execute if entity @s[tag=stolen] run tag @s add kitDone
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/end/revert

tag @s remove cooldown
scoreboard players reset @s floweyHitTimer

function du-in:kit/flowey/weapon