scoreboard players set @s[tag=!sabotaged] pussTimer 80
execute as @e[type=skeleton,tag=gonerThing,distance=0.05..5] run function du-in:kit/puss/ability/void/hit

# scoreboard players set @s weapCount 0
function du-in:kit/all/weapon/init

#execute anchored eyes facing entity @s eyes run summon marker ^ ^ ^1.25 {Tags:["tpMark"]}

#execute if entity @s[tag=!sabotaged] as @e[type=marker,tag=tpMark] run function du-in:kit/puss/ability/raycast

effect give @s strength 3 0 true
effect give @s haste 3 0 true
effect give @s speed 3 1 true

particle minecraft:crit ~ ~.1 ~ 0.1 1 0.1 0 100 force
particle minecraft:poof ~ ~.1 ~ 0.1 0.1 0.1 0.05 100 force

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
#xp set @s[tag=!stolen] 270 levels

#Switch villager back to their ability
#execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s add cooldown
#End ability
tag @s remove kitActions