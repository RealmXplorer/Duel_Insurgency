clear @s minecraft:carrot_on_a_stick
playsound minecraft:entity.vex.death master @a ~ ~ ~ 1 .5
playsound minecraft:sans.ability master @a ~ ~ ~ .25 .95
function du-in:kit/springtrap/particle
effect give @s[tag=!sabotaged] minecraft:regeneration 5 2 true
attribute @s attack_damage modifier remove springlock_damage

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

#clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 390 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove springLock
tag @s remove kitActions