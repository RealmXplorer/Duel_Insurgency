execute if entity @s[tag=!sabotaged] as @a[tag=playing,tag=!spectating,tag=!working] unless score @a[scores={kit=1000},tag=kitActions,limit=1] team = @s team run tag @s add confusion
tag @s[tag=sabotaged] add confusion

clear @s minecraft:carrot_on_a_stick

xp set @s[tag=!stolen] 600 levels
tag @s[tag=!sabotaged] remove confusion

effect give @s minecraft:resistance 3 0 true
effect give @s minecraft:speed 3 1 true

playsound minecraft:saac.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 100 2
playsound minecraft:block.glass.break master @a ~ ~ ~ 100 .8
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100 1


execute as @a[tag=confusion] at @s run function du-in:kit/saac/ability/confused

tag @s remove kitActions