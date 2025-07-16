tag @s add judySleep

execute unless score @s team = @a[scores={kit=35},sort=nearest,tag=kitActions,limit=1] team at @s run function du-in:kit/judy/ability/enemy

execute if score @s team = @a[scores={kit=35},tag=kitActions,limit=1] team at @s run function du-in:kit/judy/ability/teammate

particle minecraft:crit ~ ~2.25 ~ 0.25 0.25 0.25 0.25 100 force @a
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ .5 .75
playsound minecraft:enchant.thorns.hit master @a ~ ~ ~ 2 2