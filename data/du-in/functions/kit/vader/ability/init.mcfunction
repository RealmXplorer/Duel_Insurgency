#If player is near and valid, run
#execute unless score @s team = @a[distance=0.05..5,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/vader/ability/success

execute if entity @a[distance=0.05..5,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run function du-in:kit/vader/ability/success


#If player is too far
execute unless entity @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/far

#If player is on same team.
#execute if score @s team = @a[distance=0.05..5,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/all/ability/team

#End ability
tag @s remove kitActions