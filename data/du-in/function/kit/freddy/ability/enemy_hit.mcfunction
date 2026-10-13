effect clear @s night_vision
effect give @s darkness 1 1 true
effect give @s blindness 1 1 true
scoreboard players set @s darkTimer 200
tag @s add freddyDark
execute unless score #freddyDark running matches 1 run function du-in:kit/freddy/ability/dark/loop

tag @s remove freddyHit