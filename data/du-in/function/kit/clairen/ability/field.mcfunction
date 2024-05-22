#Draw circle
scoreboard players add @s circleTimer 1
execute if entity @s[scores={circleTimer=1}] at @s run tp @s ~ ~ ~ 0 -90
execute if entity @s[scores={circleTimer=1}] at @s run function du-in:kit/clairen/draw_sphere
scoreboard players reset @s[scores={circleTimer=31..}] circleTimer

#Set timer
scoreboard players set @s[tag=!clairSet] clairenTimer 100
tag @s[tag=!clairSet] add clairSet

#Run Field functions
execute if entity @s[tag=sabotaged] run function du-in:kit/clairen/ability/field/sabotaged
execute if entity @s[tag=!sabotaged] run function du-in:kit/clairen/ability/field/unsabotaged

#Countdown and end
scoreboard players remove @s[scores={clairenTimer=-1..}] clairenTimer 1
execute if entity @s[scores={clairenTimer=..0}] run function du-in:kit/clairen/ability/field/end