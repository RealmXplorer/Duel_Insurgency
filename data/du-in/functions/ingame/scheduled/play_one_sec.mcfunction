#Set Spawnpoints
execute if entity @s[tag=cIngame] if score #main map matches 7 run function du-in:ingame/spawnpoint/furthest
execute if entity @s[tag=cIngame] unless score #main map matches 7 run function du-in:ingame/spawnpoint/random

execute if entity @s[tag=!cIngame] run function du-in:ingame/spawnpoint/random