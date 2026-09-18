#Break, Message and sound if no valid player nearby
execute unless entity @e[type=skeleton,tag=gonerThing,distance=0.05..4] run return run function du-in:kit/all/ability/titles/far


#Add "Hit" tag to nearest player
function du-in:kit/sans/ability/void/goner_hit


