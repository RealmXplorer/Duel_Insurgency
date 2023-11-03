execute if entity @s[tag=!empower,predicate=!du-in:effect/is_on_fire] as @a[tag=spiderHit] run function du-in:kit/spider/ability/effect_normal

execute if entity @s[tag=empower,predicate=!du-in:effect/is_on_fire] as @a[tag=spiderHit] run function du-in:kit/spider/ability/effect_empower

execute if entity @s[tag=!empower,predicate=du-in:effect/is_on_fire] as @a[tag=spiderHit] run function du-in:kit/spider/ability/effect_fire

execute if entity @s[tag=empower,predicate=du-in:effect/is_on_fire] as @a[tag=spiderHit] run function du-in:kit/spider/ability/effect_empower_fire

execute as @a[tag=spiderHit] at @s run playsound minecraft:block.honey_block.slide master @s ~ ~ ~ 1 1

particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 2 200 force
particle minecraft:end_rod ~ ~1.5 ~ 1 1 1.2 0.05 240 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 100 1
playsound minecraft:entity.vex.death master @a ~ ~ ~ 100 1.5
playsound minecraft:sans.ability master @a ~ ~ ~ .5 1.05
execute if entity @s[predicate=du-in:effect/is_on_fire] run function du-in:kit/spider/ability/fire_particle

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 280 levels
tag @s remove sabotaged
tag @s remove empower
tag @a remove spiderHit
execute if entity @s[tag=stolen] run tag @s add kitDone