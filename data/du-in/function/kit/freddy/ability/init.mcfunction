execute if entity @s[tag=void] run return run function du-in:kit/freddy/ability/void/init
execute if entity @s[tag=sabotaged] run return run function du-in:kit/freddy/ability/sabotage/init

#Take lights away
function du-in:kit/freddy/ability/light/scan_start

scoreboard players set @s lightTimer 100

#Put into cooldown
tag @s add cooldown
clear @s #du-in:ability

tag @s remove kitActions

