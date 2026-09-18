execute if entity @s[tag=!sabotaged] as @a[distance=0.05..4,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run tag @s add spiderHit
execute as @a[tag=spiderHit] if score @s team = @a[scores={kit=1},tag=kitActions,sort=nearest,limit=1] team run tag @s remove spiderHit
execute if entity @s[tag=sabotaged] run tag @s add spiderHit

#End function if no valid players
execute unless entity @a[tag=spiderHit] run return run function du-in:kit/all/ability/titles/team

##SUCCESS
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute as @a[tag=spiderHit] at @s run playsound minecraft:block.honey_block.slide master @s ~ ~ ~ 1 1

#Determine hit type
execute if entity @s[tag=!empower,predicate=!du-in:effect/is_on_fire] as @a[tag=spiderHit] run function du-in:kit/spider/ability/effect_normal
execute if entity @s[tag=empower,predicate=!du-in:effect/is_on_fire] as @a[tag=spiderHit] run function du-in:kit/spider/ability/empower/effect

execute if entity @s[tag=!empower,predicate=du-in:effect/is_on_fire] as @a[tag=spiderHit] run function du-in:kit/spider/ability/effect_fire
execute if entity @s[tag=empower,predicate=du-in:effect/is_on_fire] as @a[tag=spiderHit] run function du-in:kit/spider/ability/empower/effect_fire

#Particles and sounds
particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 2 200 force
particle minecraft:end_rod ~ ~1.5 ~ 1 1 1.2 0.05 240 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 100 1
playsound minecraft:entity.vex.death master @a ~ ~ ~ 100 1.5
playsound du-in:sfx.ut.ability master @a ~ ~ ~ .5 1.05
execute if entity @s[predicate=du-in:effect/is_on_fire] run function du-in:kit/spider/ability/fire_particle

#Animation
swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

#End functions
xp set @s[tag=!stolen] 280 levels
clear @s #du-in:ability
tag @s remove sabotaged
tag @s remove empower
tag @a remove spiderHit
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove kitActions