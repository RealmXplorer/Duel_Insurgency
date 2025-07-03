#Find player
$execute if entity @s[tag=!stolen] run function du-in:kit/all/step/go with storage du-in:player$(current) kit
execute if entity @s[tag=stolen] run function du-in:kit/villager/events/step
scoreboard players reset @s step
scoreboard players reset @s sprint