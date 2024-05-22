execute unless entity @s[scores={skeletonMode=1..}] run function du-in:kit/skeleton/skins/default
execute if entity @s[scores={skeletonMode=1}] run function du-in:kit/skeleton/skins/stray
execute if entity @s[scores={skeletonMode=2}] run function du-in:kit/skeleton/skins/bogged
tag @s remove armor