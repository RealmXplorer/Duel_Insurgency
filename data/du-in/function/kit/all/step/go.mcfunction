#Run "events/step" for selected character
$execute at @s rotated as @s run function du-in:kit/$(kit)/events/step

scoreboard reset @s step
scoreboard reset @s sprint