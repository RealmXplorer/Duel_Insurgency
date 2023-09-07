#execute unless score @s team = @a[distance=.05..5,tag=playing,gamemode=!spectator,sort=nearest,tag=!teamDead,limit=1,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/ralsei/ability/success

#If player is in range
execute if entity @e[type=skeleton,distance=.05..5.25] run function du-in:kit/ralsei/ability/void/success

#If player is too far
execute unless entity @e[type=skeleton,distance=.05..5.25] run function du-in:kit/all/ability/far

#If player is on team
#execute if score @s team = @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead,limit=1] team run function du-in:kit/all/ability/team

#End ability
tag @s remove kitActions