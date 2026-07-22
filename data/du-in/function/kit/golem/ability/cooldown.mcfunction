playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ 10 1

particle minecraft:crit ~ ~.1 ~ 0.1 1 0.1 0 100 force
particle minecraft:poof ~ ~.1 ~ 0.1 0.1 0.1 0.05 100 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 100 .1
playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 100 1
playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100 .1
playsound du-in:sfx.ut.ability master @a ~ ~ ~ .5 1
execute if entity @s[tag=empower] run playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 1 1.5

clear @s #du-in:ability
xp set @s[tag=!stolen] 360 levels
tag @s remove sabotaged
tag @s remove empower
tag @a remove golemHit
tag @a remove empoweredGolemHit
tag @s add kitDone