scoreboard players reset @s secKitUse

#return error if has flags
execute if entity @s[tag=flagGot] run return run function du-in:kit/all/ability/titles/flag
execute if entity @s[predicate=du-in:runza_hold] run return 100

#Add secKitActions.
tag @s add secKitActions

##DATAPACK 6.0
#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
function du-in:kit/all/secondary/activate/find_kit with storage du-in:main player
