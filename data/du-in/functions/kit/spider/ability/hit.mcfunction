#execute if entity @s[tag=!sabotaged] run function du-in:kit/spider/ability/enemy_hit

execute if entity @s[tag=!sabotaged] as @a[distance=0.05..4,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run tag @s add spiderHit
execute as @a[tag=spiderHit] if score @s team = @a[scores={kit=1},tag=kitActions,sort=nearest,limit=1] team run tag @s remove spiderHit
execute if entity @s[tag=sabotaged] run tag @s add spiderHit
#execute if entity @s[tag=sabotaged] run function du-in:kit/spider/ability/sabotaged_hit

execute unless entity @a[tag=spiderHit] run function du-in:kit/all/ability/team
execute if entity @a[tag=spiderHit] run function du-in:kit/spider/ability/enemy_hit

# particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 2 200 force
# particle minecraft:end_rod ~ ~1.5 ~ 1 1 1.2 0.05 240 force
# playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
# playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 100 1
# playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 100 1
# playsound minecraft:entity.vex.death master @a ~ ~ ~ 100 1.5
# playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 100 1
# execute if entity @s[predicate=du-in:effect/is_on_fire] run function du-in:kit/spider/ability/fire_particle

# clear @s minecraft:carrot_on_a_stick
# xp set @s[tag=!stolen] 280 levels
# tag @s remove sabotaged
# tag @s remove empower
# execute if entity @s[tag=stolen] run tag @s add kitDone