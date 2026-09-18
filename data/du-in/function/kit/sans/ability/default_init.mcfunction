#Message, sound, break if no valid player nearby
execute unless entity @a[distance=0.05..4.5,gamemode=!spectator,tag=playing,tag=!teamDead] run return run function du-in:kit/all/ability/titles/far

#Add "Hit" tag to nearest player
function du-in:kit/sans/ability/enemy_hit

