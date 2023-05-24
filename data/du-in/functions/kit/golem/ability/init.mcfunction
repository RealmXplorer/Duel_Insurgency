#If Golem is close to enemy#
#execute unless score @s team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/golem/ability/hit

execute if entity @a[distance=0.05..4,tag=playing,sort=nearest,gamemode=!spectator,tag=!teamDead] run function du-in:kit/golem/ability/hit

#If Golem is far from enemy#
execute unless entity @a[distance=0.05..4,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/far

#If Golem is close to Teammate#
#execute if score @s team = @a[distance=0.05..4,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/all/ability/team

#Finish Ability#
tag @s remove kitActions