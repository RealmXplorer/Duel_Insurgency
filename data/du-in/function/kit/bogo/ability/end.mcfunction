##End ability
scoreboard players reset @s bogoTimer
attribute @s movement_speed modifier remove bogo_charge
attribute @s movement_speed modifier remove bogo_charge_build
tag @s remove bogoCharge

xp set @s[tag=!stolen] 320 levels
effect give @s slowness 2 1 true
tag @s remove cooldown
tag @s remove empower
execute if entity @s[tag=stolen] run tag @s add kitDone