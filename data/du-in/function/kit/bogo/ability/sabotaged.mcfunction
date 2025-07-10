function du-in:kit/all/ability/sabotage/effects

effect give @s[tag=!empower] slowness 2 0 true
effect give @s[tag=empower] slowness 3 0 true
playsound minecraft:entity.cow.ambient voice @a ~ ~ ~ 1 0.75 1

scoreboard players reset @s bogoTimer
attribute @s movement_speed modifier remove bogo_charge
attribute @s movement_speed modifier remove bogo_charge_build
tag @s remove bogoCharge

xp set @s[tag=!stolen] 320 levels
tag @s remove cooldown
tag @s remove empower
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone