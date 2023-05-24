#Add "Hit" tag to nearest player
execute if entity @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] unless score @s team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest] team run function du-in:kit/sans/ability/enemy_hit

#Message and sound if no valid player nearby
execute unless entity @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] run function du-in:kit/all/ability/far

execute if entity @a[distance=0.05..4,gamemode=!spectator,tag=playing,tag=!teamDead] if score @s team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest] team run function du-in:kit/all/ability/team

#End Ability
tag @s remove kitActions
