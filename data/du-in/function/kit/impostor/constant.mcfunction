#SOUNDS#
execute if entity @s[scores={step=150..}] run function du-in:kit/impostor/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/impostor/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

tag @s add sus

scoreboard players add @s[scores={ventCooldown=..61}] ventCooldown 1

#Test Impostor Meeting Spot
execute unless block ~ ~-1 ~ #du-in:zomb_invalid run tag @s remove badBlock

execute if block ~ ~-1 ~ #du-in:zomb_invalid rotated as @s run tag @s add badBlock
execute if block ~ ~ ~ #minecraft:liquid rotated as @s run tag @s add badBlock

#THIS SPECIMEN
#STOKES MY CURIOUSITY
#PERHAPS I CAN STUDY IT
#FURTHER
