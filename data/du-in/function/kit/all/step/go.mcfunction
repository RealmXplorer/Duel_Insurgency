#Run "events/step" for selected character
$execute at @s rotated as @s run function du-in:kit/$(kit)/events/step

scoreboard players reset @s step
scoreboard players reset @s sprint