#Add new kit to list size
$execute store result score #main listSize run data get storage du-in:$(group) list.size
$execute store result storage du-in:$(group) list.size int 1 run scoreboard players get #main listSize

#Set kit's placement in rank
$execute store result storage du-in:new_kit kit.rank int 1 run data get storage du-in:$(group) list.size

#Set kit's placement in inventory
#execute if score #main listSize matches ..8 store result storage new_kit kit.slot int 1 run scoreboard players get #main listSize
execute if score #main listSize matches 9.. run scoreboard players add #main listSize 1
#execute if score #main listSize matches 9.. store result storage new_kit kit.slot int 1 run scoreboard players get #main listSize
execute store result storage new_kit kit.slot int 1 run scoreboard players get #main listSize

#Create new kit with new info
function du-in:storage/kit/create_kit with storage du-in:new_kit kit
