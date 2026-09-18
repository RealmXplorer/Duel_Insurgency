#If player is too far
execute unless entity @p[distance=0.05..10,tag=playing,gamemode=!spectator,tag=!teamDead] run return run function du-in:kit/all/ability/titles/far

#If valid
function du-in:kit/chara/ability/found_player


#OLD
# execute if entity @p[distance=0.05..10,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/chara/ability/found_player

# #If player is too far
# execute unless entity @p[distance=0.05..10,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/titles/far

# #End Ability
# tag @s remove kitActions