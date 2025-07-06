
#If player is in range
execute if entity @s[tag=!neoChaos] if entity @e[type=skeleton,distance=.05..5.25] run function du-in:kit/jevil/ability/void/success
execute if entity @s[tag=neoChaos] run function du-in:kit/jevil/ability/void/success

#If player is too far
execute if entity @s[tag=!neoChaos] unless entity @e[type=skeleton,distance=.05..5.25] run function du-in:kit/all/ability/titles/far

#End ability
tag @s remove kitActions