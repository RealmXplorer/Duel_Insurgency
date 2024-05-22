#If player is near and valid, run
execute if entity @a[distance=0.05..5,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run function du-in:kit/vader/ability/success


#If player is too far
execute unless entity @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/far

#End ability
tag @s remove kitActions