scoreboard players set @s[tag=!sabotaged] pussTimer 80
execute as @e[type=skeleton,tag=gonerThing,distance=0.05..5] run function du-in:kit/puss/ability/void/hit

function du-in:kit/all/weapon/init

effect give @s strength 3 0 true
effect give @s haste 3 0 true
effect give @s speed 3 1 true

particle minecraft:crit ~ ~.1 ~ 0.1 1 0.1 0 100 force
particle minecraft:poof ~ ~.1 ~ 0.1 0.1 0.1 0.05 100 force

#Remove ability from hand
#clear @s minecraft:carrot_on_a_stick

tag @s remove sabotaged
tag @s add cooldown
#End ability
tag @s remove kitActions