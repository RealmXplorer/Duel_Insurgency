#Find player
$execute if entity @s[tag=!stolen] run function du-in:kit/all/jump/go with storage du-in:player$(current) kit
execute if entity @s[tag=stolen] run function du-in:kit/villager/events/jump
scoreboard players reset @s jump