#Find player
$execute if entity @s[tag=!stolen] run function du-in:kit/all/hit/go with storage du-in:player$(current) kit
execute if entity @s[tag=stolen] run function du-in:kit/villager/events/hit
scoreboard players reset @s hit