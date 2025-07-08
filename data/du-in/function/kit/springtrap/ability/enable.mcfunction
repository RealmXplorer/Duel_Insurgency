tag @s add springLock
xp set @s 20 levels
clear @s #du-in:ability
#function du-in:kit/springtrap/ability/item
playsound minecraft:springtrap.jumpscare master @a ~ ~ ~ .5 1
playsound minecraft:sans.ability master @a ~ ~ ~ .25 1.05
function du-in:kit/springtrap/ability/particle
execute if entity @s[predicate=!du-in:effect/is_on_fire] run attribute @s minecraft:movement_speed base set 0.13
execute if entity @s[tag=stolen] run attribute @s minecraft:movement_speed base set 0.13
effect clear @s[tag=!sabotaged] minecraft:levitation
effect clear @s[tag=!sabotaged] minecraft:weakness
damage @s[scores={Health=6..}] 5
damage @s[tag=sabotaged] 5
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects
tag @s remove kitActions