#If player is in range and valid
execute unless score @s team = @a[distance=0.05..3,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/spider/ability/hit

#If player is too far
execute unless entity @a[distance=0.05..3,tag=playing,gamemode=!spectator,tag=!dmDead,tag=!teamDead] run function du-in:kit/all/ability/far

#If player is on same team
execute if score @s team = @a[distance=0.05..3,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/all/ability/team

#End ability
tag @s remove kitActions