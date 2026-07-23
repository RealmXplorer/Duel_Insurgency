execute if entity @s[tag=!empower] as @e[type=skeleton,tag=gonerThing] run effect give @s slowness 4 1 true
execute if entity @s[tag=empower] as @e[type=skeleton,tag=gonerThing] run effect give @s slowness 6 3 true

clear @s #du-in:ability
xp set @s[tag=!stolen] 600 levels

effect clear @s[tag=!sabotaged]
effect give @s minecraft:speed 3 0 true

playsound du-in:kit.runza.ability master @a ~ ~ ~ 100 1
playsound minecraft:ambient.cave master @a ~ ~ ~ 100 1
playsound minecraft:block.glass.break master @a ~ ~ ~ 100 .8
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100 1
tag @s remove sabotaged
tag @s remove empower
tag @s remove kitActions
