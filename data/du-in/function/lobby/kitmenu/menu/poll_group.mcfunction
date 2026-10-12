# # Calculate the last valid index
# execute store result score #menu queueIndex run data get storage du-in:temp kit_queue
# scoreboard players remove #menu queueIndex 1

# # Begin polling the existing queue
# execute store result storage du-in:temp index int 1 run scoreboard players get #menu queueIndex
# execute if score #menu queueIndex matches 0.. run function du-in:lobby/kitmenu/menu/init_entry with storage du-in:temp

# Resolve this player's current group
execute store result storage du-in:temp theme_index int 1 run scoreboard players get @s kitTheme
$data modify storage du-in:temp active_group set from storage du-in:main themes[$(theme_index)]

# Calculate the final index from the actual group list
execute store result score #menu queueIndex run data get storage du-in:groups group.$(active_group)
scoreboard players remove #menu queueIndex 1

# Poll the current group's entries
execute store result storage du-in:temp index int 1 run scoreboard players get #menu queueIndex
execute if score #menu queueIndex matches 0.. run function du-in:lobby/kitmenu/menu/init_entry with storage du-in:temp