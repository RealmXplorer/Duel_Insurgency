execute if entity @a[distance=0.05..4,tag=playing,limit=1,sort=nearest,gamemode=!spectator,tag=!teamDead] run function du-in:kit/puss/ability/hit


#If player is too far
execute unless entity @a[distance=0.05..4,tag=playing,gamemode=!spectator,tag=!dmDead,tag=!teamDead] run function du-in:kit/all/ability/far


#End ability
tag @s remove kitActions