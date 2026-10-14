##NEW TESTS
# Get total unlock count from storage (used to calculate legendary IDs starting at 1000)
execute store result score #main legCount run data get storage du-in:groups group.unlock
scoreboard players set #main legID 1000
scoreboard players operation #main legID += #main legCount

# Reset max regular ID tracker
scoreboard players set #main regID 0

# Find highest non-legendary ID currently in du-in:kit list
execute store result score #main listLength run data get storage du-in:kit list
scoreboard players remove #main listLength 1
execute store result storage du-in:temp list_index int 1 run scoreboard players get #main listLength
function du-in:storage/kit/custom/find_id with storage du-in:temp

# 4. Process all entries in du-in:new_kit list
function du-in:storage/kit/custom/process_kit

# 5. Re-index groups and menu slots for all kits (including newly added ones)
data modify storage du-in:groups group set value {}
data modify storage du-in:main themes set value []
data modify storage du-in:random pool set value []
data modify storage du-in:random unlock_pool set value []

# Set up forward iteration indices
execute store result score #main maxIndex run data get storage du-in:kit list
scoreboard players remove #main maxIndex 1
scoreboard players set #main currentIndex 0

# Recreate Lists (Forward iteration from index 0)
execute if score #main maxIndex matches 0.. store result storage du-in:main list.index int 1 run scoreboard players get #main currentIndex
execute if score #main maxIndex matches 0.. run function du-in:storage/kit/create_list with storage du-in:main list

# Re-assign UI slots across all groups
scoreboard players set #menu themeIndex 0
execute store result storage du-in:temp theme_index int 1 run scoreboard players get #menu themeIndex

function du-in:storage/kit/slots/assign_theme with storage du-in:temp

#Set Max theme list
execute store result score #main maxThemes run data get storage du-in:main themes
scoreboard players remove #main maxThemes 1

#Define Group Displays