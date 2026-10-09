effect clear @s wither
effect clear @s slowness
effect clear @s nausea
effect clear @s poison
tag @s remove injected
clear @s iron_nugget
scoreboard players set @s abilityDelay 25
execute unless score #delay running matches 1 run function du-in:kit/all/ability/delay/loop

advancement revoke @s only du-in:kit/venom_cure