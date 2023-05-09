tag @s add springLock
function du-in:kit/springtrap/ability/item
playsound minecraft:springtrap.jumpscare master @a ~ ~ ~ .5 1
function du-in:kit/springtrap/particle
execute if entity @s[predicate=!du-in:effect/is_on_fire] run attribute @s minecraft:generic.movement_speed base set 0.13
execute if entity @s[tag=stolen] run attribute @s minecraft:generic.movement_speed base set 0.13
effect give @s[scores={Health=8..}] minecraft:instant_damage 1 0 true
tag @s remove kitActions