#Set Character storage number to main's number
$execute store result storage du-in:player$(num) kit.num int 1 run scoreboard players get @s player
$data modify storage du-in:player$(num) player.uuid set from entity @s UUID
$execute if entity @s[tag=!playing] run data modify storage du-in:player$(num) kit set value {"kit":""}

forceload add 220 42
summon item_display 220 5 42 {UUID:[I;1897213573,-1574354032,-1879462919,-666543394],Tags:["mapSpecific","nameStorage"]}
#71152e85-a229-4390-8ff9-abf9d8455ade
loot replace entity 71152e85-a229-4390-8ff9-abf9d8455ade container.0 loot du-in:name

$data modify storage du-in:player$(num) player.name set from entity 71152e85-a229-4390-8ff9-abf9d8455ade item.components."minecraft:profile".name

kill 71152e85-a229-4390-8ff9-abf9d8455ade
forceload remove 220 42

##This function stores the player's specific "number" and puts it into "kit.num" so it can be referenced later.