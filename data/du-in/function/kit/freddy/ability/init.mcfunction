execute if entity @s[tag=void] run return run function du-in:kit/freddy/ability/void/init
execute if entity @s[tag=sabotaged] run return run function du-in:kit/freddy/ability/sabotage/init


##DEFAULT ABILITY
execute store result score #main team run scoreboard players get @s team
execute as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = #main team run tag @s add freddyHit
tag @s[tag=sabotaged] add freddyHit

#Sort team
scoreboard players reset #main team


#Take lights away
function du-in:kit/freddy/ability/light/scan_start

scoreboard players set @s lightTimer 100

#Put into cooldown
tag @s add cooldown
clear @s #du-in:ability

tag @s remove kitActions

