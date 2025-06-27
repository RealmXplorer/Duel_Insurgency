execute if entity @s[tag=!sabotaged] as @a[distance=0.05..4,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run tag @s add pussHit
execute as @a[tag=pussHit] if score @s team = @a[scores={kit=27},tag=kitActions,sort=nearest,limit=1] team run tag @s remove pussHit
execute if entity @s[tag=sabotaged] run tag @s add pussHit

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute if entity @a[tag=pussHit] run function du-in:kit/puss/ability/end_start
execute unless entity @a[tag=pussHit] run function du-in:kit/all/ability/titles/team
execute as @a[tag=pussHit] run function du-in:kit/puss/ability/enemy_hit
