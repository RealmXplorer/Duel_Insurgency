execute if entity @s[tag=!sabotaged] as @a[tag=playing,tag=!spectating] unless score @a[scores={kit=1000},tag=kitActions,limit=1] team = @s team run tag @s add confusion
tag @s[tag=sabotaged] add confusion

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

#clear @s minecraft:carrot_on_a_stick
#clear @s minecraft:coal

xp set @s[tag=!stolen] 600 levels
tag @s[tag=!sabotaged] remove confusion

effect give @s minecraft:resistance 3 0 true
effect give @s minecraft:speed 3 1 true

playsound minecraft:saac.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 100 2
playsound minecraft:block.glass.break master @a ~ ~ ~ 100 .8
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100 1
playsound minecraft:sans.ability master @a ~ ~ ~ .5 1.05


execute if entity @s[tag=!empower] as @a[tag=confusion] at @s run function du-in:kit/saac/ability/confused
execute if entity @s[tag=empower] as @a[tag=confusion] at @s run function du-in:kit/saac/ability/empowered_confused

tag @s remove sabotaged
tag @s remove empower
tag @s remove kitActions