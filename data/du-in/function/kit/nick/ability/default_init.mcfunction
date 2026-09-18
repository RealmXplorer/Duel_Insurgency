#If no players near
execute unless entity @a[distance=0.05..5,tag=playing] run return run function du-in:kit/all/ability/titles/far

#If players near
function du-in:kit/nick/ability/near

