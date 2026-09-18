
#If goner is too far
execute unless entity @e[type=skeleton,distance=0.05..5,tag=gonerThing] run return run function du-in:kit/all/ability/titles/far

#If goner is close
function du-in:kit/kylo/ability/void/success