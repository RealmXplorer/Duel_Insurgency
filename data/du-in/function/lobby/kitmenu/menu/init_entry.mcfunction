#Extract kit object at current index into current_kit
$data modify storage du-in:temp current_kit set from storage du-in:temp kit_queue[$(index)]

#Execute kit init macro using current_kit compound
# function du-in:lobby/kitmenu/menu/run_kit with storage du-in:temp current_kit
function du-in:lobby/kitmenu/menu/check_slot with storage du-in:temp current_kit

#Decrement index and recurse
scoreboard players remove #menu queueIndex 1
execute store result storage du-in:temp index int 1 run scoreboard players get #menu queueIndex
execute if score #menu queueIndex matches 0.. run function du-in:lobby/kitmenu/menu/init_entry with storage du-in:temp