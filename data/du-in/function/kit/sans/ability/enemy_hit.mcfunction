execute unless entity @s[tag=sabotaged] as @a[distance=0.05..4.5,gamemode=!spectator,tag=playing,tag=!teamDead] unless score @s team = @a[tag=kitActions,scores={kit=16},limit=1,sort=nearest] team run tag @s add sansHit

execute if entity @s[tag=sabotaged] run function du-in:kit/sans/ability/sabotaged

execute if entity @s[tag=!sabotaged] unless entity @a[tag=sansHit] run function du-in:kit/all/ability/titles/team
execute if entity @a[tag=sansHit] run function du-in:kit/sans/ability/tp_test