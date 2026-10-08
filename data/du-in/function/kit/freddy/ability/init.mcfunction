execute if entity @s[tag=void] run return run function du-in:kit/freddy/ability/void/init
execute if entity @s[tag=sabotaged] run return run function du-in:kit/freddy/ability/sabotage/init


##DEFAULT ABILITY
execute store result score #main team run scoreboard players get @s team
execute as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = #main team run tag @s add freddyHit
tag @s[tag=sabotaged] add freddyHit

#Sort team
scoreboard players reset #main team

attribute @s attack_damage modifier add freddy_ability 2 add_value
attribute @s movement_speed modifier add freddy_ability 0.3 add_value

#Go Invisible
tag @s add freddyShadow
tag @s add invisible
clear @s #du-in:armor

#Take lights away
function du-in:kit/freddy/ability/light/scan_start

scoreboard players set @s lightTimer 100

#Put into cooldown
tag @s add cooldown
clear @s #du-in:ability

tag @s remove kitActions

