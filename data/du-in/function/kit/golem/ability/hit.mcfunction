execute if entity @s[tag=!sabotaged] as @a[distance=0.05..4,tag=playing,gamemode=!spectator,tag=!teamDead] run tag @s add golemHit
execute as @a[tag=golemHit] if score @s team = @p[scores={kit=6},tag=kitActions] team run tag @s remove golemHit
tag @s[tag=sabotaged] add golemHit


execute if entity @s[tag=!sabotaged] unless entity @a[tag=golemHit] run function du-in:kit/all/ability/team

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute as @a[tag=golemHit] run function du-in:kit/golem/ability/throw

execute if entity @s[tag=sabotaged] run function du-in:kit/golem/ability/throw

execute if entity @a[tag=golemHit] run function du-in:kit/golem/ability/cooldown
