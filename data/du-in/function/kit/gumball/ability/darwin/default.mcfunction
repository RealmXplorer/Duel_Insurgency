#If player is too far
execute unless entity @a[distance=0.05..3,tag=playing,gamemode=!spectator,tag=!dmDead,tag=!teamDead] run return run function du-in:kit/all/ability/titles/far

#Success
function du-in:kit/gumball/ability/darwin/start

#Test players
#execute if entity @s[tag=!sabotaged] run tag @a[distance=0.05..10,tag=playing,tag=!win,tag=!lose,gamemode=!spectator,tag=!teamDead] add darwinMark
#execute if entity @s[tag=!sabotaged] as @a[tag=darwinMark] if score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=17}] team run tag @s remove darwinMark
#tag @s[tag=sabotaged] add darwinMark

#Break function if no player marked
#execute unless entity @a[tag=darwinMark] run return run function du-in:kit/all/ability/titles/team

#function du-in:kit/gumball/ability/darwin/start

#If player is on team
#execute if score @s team = @p[distance=0.05..3,tag=playing,gamemode=!spectator,tag=!teamDead] team run function du-in:kit/all/ability/titles/team
