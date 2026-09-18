#If enemy is too far
execute unless entity @e[type=skeleton,tag=gonerThing,distance=0.05..5] run return run function du-in:kit/all/ability/titles/far

#Enemy in radius
function du-in:kit/papyrus/ability/void/success
