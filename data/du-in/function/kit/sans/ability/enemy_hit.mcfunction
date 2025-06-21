execute unless entity @s[tag=sabotaged] as @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] unless score @s team = @a[tag=kitActions,scores={kit=16},limit=1,sort=nearest] team run tag @s add sansHit

scoreboard players set @s[tag=sabotaged] ralseiTimer 70

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute if entity @s[tag=!sabotaged] unless entity @a[tag=sansHit] run function du-in:kit/all/ability/team
execute if entity @a[tag=sansHit] run function du-in:kit/sans/ability/tp_test

execute if entity @s[tag=sabotaged] run function du-in:kit/sans/ability/fail