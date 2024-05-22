tag @s[tag=!sabotaged] add runzaRex
execute as @a[tag=playing,tag=!spectating,tag=!runzaRex] at @s unless score @a[scores={kit=1004},tag=kitActions,limit=1] team = @s team run function du-in:kit/runza/ability/start
clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 600 levels
tag @s[tag=!sabotaged] remove runza
tag @s[tag=!sabotaged] remove notEaten
effect clear @s[tag=!sabotaged]
effect give @s minecraft:speed 3 0 true
playsound minecraft:runza.ability master @a ~ ~ ~ 100 1
playsound minecraft:sans.ability master @a ~ ~ ~ 1 1.05
playsound minecraft:ambient.cave master @a ~ ~ ~ 100 1
playsound minecraft:block.glass.break master @a ~ ~ ~ 100 .8
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100 1
tag @s remove sabotaged
tag @s remove runzaRex
tag @s remove kitActions
