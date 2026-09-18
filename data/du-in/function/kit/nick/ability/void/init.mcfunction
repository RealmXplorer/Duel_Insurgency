tag @s remove kitActions

#If no entity close
execute unless entity @e[distance=0.05..4] run return run function du-in:kit/all/ability/titles/far

#If entity close
function du-in:kit/nick/ability/void/near