execute if entity @s[tag=!sabotaged] as @a[distance=0.05..4,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run tag @s add spiderHit
execute as @a[tag=spiderHit] if score @s team = @a[scores={kit=1},tag=kitActions,sort=nearest,limit=1] team run tag @s remove spiderHit
execute if entity @s[tag=sabotaged] run tag @s add spiderHit

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute unless entity @a[tag=spiderHit] run function du-in:kit/all/ability/titles/team
execute if entity @a[tag=spiderHit] run function du-in:kit/spider/ability/enemy_hit
