#If Golem is far from enemy#
execute unless entity @e[type=skeleton,tag=gonerThing,distance=0.05..4] run return run function du-in:kit/all/ability/titles/far

#If Golem is close to enemy#
function du-in:kit/golem/ability/void/hit
