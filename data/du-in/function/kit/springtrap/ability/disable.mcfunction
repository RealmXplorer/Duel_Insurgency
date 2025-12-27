tag @s remove springLock
clear @s #du-in:ability
effect clear @s poison
effect clear @s[tag=sabotaged] wither

playsound minecraft:entity.vex.death master @a ~ ~ ~ 1 .5
playsound minecraft:sans.ability master @a ~ ~ ~ .25 .95
function du-in:kit/springtrap/ability/particle
effect give @s[tag=!sabotaged] minecraft:regeneration 5 2 true
attribute @s attack_damage modifier remove springlock_damage

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

clear @s #du-in:ability
xp set @s[tag=!stolen] 390 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove kitActions