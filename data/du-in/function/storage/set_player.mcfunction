#Set Character storage number to main's number
$execute store result storage du-in:player$(num) kit.num int 1 run scoreboard players get @s player
$data modify storage du-in:player$(num) player.uuid set from entity @s UUID
$execute if entity @s[tag=!playing] run data modify storage du-in:player$(num) kit set value {"kit":""}

##This function stores the player's specific "number" and puts it into "kit.num" so it can be referenced later.