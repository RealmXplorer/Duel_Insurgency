#execute unless score @s team = @a[distance=.05..5,tag=playing,gamemode=!spectator,sort=nearest,tag=!teamDead,limit=1,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/ralsei/ability/success

#If player is in range
execute if entity @s[tag=!neoChaos] if entity @a[distance=.05..10,tag=playing,gamemode=!spectator,tag=!teamDead,gamemode=!spectator] run function du-in:kit/jevil/ability/success

execute if entity @s[tag=neoChaos] run function du-in:kit/jevil/ability/success

#If player is too far
execute unless entity @a[distance=.05..10,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/titles/far

#End ability
tag @s remove kitActions