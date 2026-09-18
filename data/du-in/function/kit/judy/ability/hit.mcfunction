tag @s add judySleep

particle minecraft:crit ~ ~2.25 ~ 0.25 0.25 0.25 0.25 100 force @a
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ .5 .75
playsound minecraft:enchant.thorns.hit master @a ~ ~ ~ 2 2

tag @a remove dartShooter

#Teammate
execute if score @s team = @a[scores={kit=35},tag=kitActions,limit=1] team at @s run return run function du-in:kit/judy/ability/teammate

#Default effect
function du-in:kit/judy/ability/enemy
