#If player is in range
execute if entity @s[tag=!void] unless score @s team = @p[distance=0.05..3,tag=playing,tag=!teamDead,gamemode=!spectator] team run function du-in:kit/gumball/ability/darwin/start

execute if entity @s[tag=void] if entity @e[type=skeleton,tag=gonerThing,distance=0.05..3] run function du-in:kit/gumball/ability/darwin/start

#If player is too far
execute if entity @s[tag=!void] unless entity @a[distance=0.05..3,tag=playing,gamemode=!spectator,tag=!dmDead,tag=!teamDead] run function du-in:kit/all/ability/far
execute if entity @s[tag=void] unless entity @e[type=skeleton,tag=gonerThing,distance=0.05..3] run function du-in:kit/all/ability/far

#If player is on team
execute if entity @s[tag=!void] if score @s team = @p[distance=0.05..3,tag=playing,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/all/ability/team

#End ability
tag @s remove kitActions