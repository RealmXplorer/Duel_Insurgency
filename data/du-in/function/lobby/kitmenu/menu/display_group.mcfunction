#Copy group list into working queue
$data modify storage du-in:temp kit_queue set from storage du-in:groups group.$(active_group)

#Update player kitList score
$execute if entity @s[tag=kitsListed] store result score @s kitList run data get storage du-in:groups group.$(active_group)

#Calculate max array index (length - 1)
execute store result score #menu queueIndex run data get storage du-in:temp kit_queue
scoreboard players remove #menu queueIndex 1

#Start loop only if queue has at least 1 item left
execute store result storage du-in:temp index int 1 run scoreboard players get #menu queueIndex
execute if score #menu queueIndex matches 0.. run function du-in:lobby/kitmenu/menu/init_entry with storage du-in:temp

execute if entity @s[tag=kitsListed] run tag @s remove kitsListed