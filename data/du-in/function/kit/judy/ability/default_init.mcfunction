tag @s add dartShooter
execute unless entity @s[tag=void] positioned ~ ~0.5 ~ positioned ^ ^ ^1.5 run function du-in:kit/judy/ability/raycast
execute if entity @s[tag=void] positioned ~ ~0.5 ~ positioned ^ ^ ^1.5 run function du-in:kit/judy/ability/void/raycast

playsound du-in:sfx.ut.ability master @a ~ ~ ~ .25 1
playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ .25 1.5


#For Sabotage
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects
