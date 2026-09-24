#Find player
$execute if entity @s[tag=!stolen] run function du-in:kit/all/init/go with storage du-in:player$(current) kit
execute if entity @s[tag=stolen] run function du-in:kit/villager/constant