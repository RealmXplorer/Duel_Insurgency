tag @s add springLock
function du-in:kit/springtrap/ability/item
playsound minecraft:springtrap.jumpscare master @a ~ ~ ~ .5 1
function du-in:kit/springtrap/particle
attribute @s minecraft:generic.movement_speed base set 0.13
effect give @s[scores={Health=8..}] minecraft:instant_damage 1 0 true
tag @s remove kitActions