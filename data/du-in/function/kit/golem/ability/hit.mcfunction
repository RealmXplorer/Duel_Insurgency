execute if entity @s[tag=!sabotaged] as @a[distance=0.05..4,tag=playing,gamemode=!spectator,tag=!teamDead] run tag @s add golemHit
execute as @a[tag=golemHit] if score @s team = @p[scores={kit=6},tag=kitActions,distance=..4] team run tag @s remove golemHit
tag @s[tag=sabotaged] add golemHit

#Break function if no targets
execute unless entity @a[tag=golemHit] run return run function du-in:kit/all/ability/titles/team


##SUCCESS
#Empowered hit
execute if entity @s[tag=empower] run tag @a[tag=golemHit] add empoweredGolemHit

#If sabotaged
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

#Affect hit players
execute as @a[tag=golemHit] run function du-in:kit/golem/ability/throw

#Particles and sounds
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

swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

clear @s #du-in:ability
xp set @s[tag=!stolen] 360 levels
tag @s remove sabotaged
tag @s remove empower
#??
tag @s add kitDone 
tag @s remove kitActions
