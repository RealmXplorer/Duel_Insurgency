execute if entity @s[tag=!sabotaged] run function du-in:kit/spider/ability/enemy_hit

execute if entity @s[tag=sabotaged] run function du-in:kit/spider/ability/sabotaged_hit

execute at @a[distance=0.05..3,tag=playing,gamemode=!spectator,tag=!dmDead,tag=!teamDead] run playsound minecraft:block.honey_block.slide master @a[distance=0.05..3,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] ~ ~ ~ 1 1

particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 2 200 force
particle minecraft:end_rod ~ ~1.5 ~ 1 1 1.2 0.05 240 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 100 1
playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 100 1
playsound minecraft:entity.vex.death master @a ~ ~ ~ 100 1.5
playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 100 1

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 260 levels
tag @s remove sabotaged
tag @s remove empower
execute if entity @s[tag=stolen] run tag @s add kitDone