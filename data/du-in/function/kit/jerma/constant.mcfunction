execute if entity @s[scores={hit=5..}] run function du-in:kit/jerma/sounds/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#Jerma#
tag @s add sus

scoreboard players add @s[scores={ventCooldown=..61}] ventCooldown 1

execute if entity @s[tag=secKitActions] run function du-in:kit/jerma/secondary/eat_onion

#WHAT THE FUCK#