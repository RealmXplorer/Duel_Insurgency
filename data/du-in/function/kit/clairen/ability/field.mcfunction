#Count down timer
scoreboard players remove @s clairenTimer 1

#Draw circle
scoreboard players add @s circleTimer 1
execute if entity @s[scores={circleTimer=1}] at @s run tp @s ~ ~ ~ 0 -90
execute if entity @s[scores={circleTimer=1}] at @s run function du-in:kit/clairen/ability/draw_sphere
scoreboard players reset @s[scores={circleTimer=31..}] circleTimer

#Set timer
#scoreboard players set @s[tag=!clairSet] clairenTimer 100
#tag @s[tag=!clairSet] add clairSet

#Run Field functions
execute at @s if entity @a[distance=..6,gamemode=!spectator,tag=!inField] run function du-in:kit/clairen/ability/add_field
execute at @s as @a[distance=6..,gamemode=!spectator,tag=inField] run function du-in:kit/clairen/ability/remove_field

#execute if entity @s[tag=sabotaged,tag=empower] run function du-in:kit/clairen/ability/field/empowered_sabotage
#execute if entity @s[tag=sabotaged,tag=!empower] run function du-in:kit/clairen/ability/field/sabotaged
#execute if entity @s[tag=!sabotaged,tag=empower] run function du-in:kit/clairen/ability/field/empowered
#execute if entity @s[tag=!sabotaged,tag=!empower] run function du-in:kit/clairen/ability/field/unsabotaged

#Countdown and end
execute if entity @s[scores={clairenTimer=..0}] run function du-in:kit/clairen/ability/field/end