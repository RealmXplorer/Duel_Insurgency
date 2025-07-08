execute as @e[type=skeleton,tag=gonerThing] run effect give @s slowness 4 1 true

#clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 600 levels

effect clear @s[tag=!sabotaged]
effect give @s minecraft:speed 3 0 true

playsound minecraft:runza.ability master @a ~ ~ ~ 100 1
playsound minecraft:ambient.cave master @a ~ ~ ~ 100 1
playsound minecraft:block.glass.break master @a ~ ~ ~ 100 .8
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100 1
tag @s remove sabotaged

tag @s remove kitActions
