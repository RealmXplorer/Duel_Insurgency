# #Fetch group string into active_group
# $data modify storage du-in:temp active_group set from storage du-in:main themes[$(theme_index)]

# #Get size of this group array
# $execute store result score #menu groupSize run data get storage du-in:groups group.$(active_group)

# #If group has kits, set kit_index in storage BEFORE invoking assign_kit
# execute if score #menu groupSize matches 1.. run scoreboard players set #menu kitIndex 0
# execute if score #menu groupSize matches 1.. store result storage du-in:temp kit_index int 1 run scoreboard players get #menu kitIndex
# execute if score #menu groupSize matches 1.. run function du-in:storage/kit/slots/assign_kit with storage du-in:temp

# #Advance to next theme
# scoreboard players add #menu themeIndex 1
# execute store result storage du-in:temp theme_index int 1 run scoreboard players get #menu themeIndex

# #Recurse to next theme passing updated theme_index compound
# $execute if data storage du-in:main themes[$(theme_index)] run function du-in:storage/kit/slots/assign_theme with storage du-in:temp

#Fetch group string into active_group
$data modify storage du-in:temp active_group set from storage du-in:main themes[$(theme_index)]

#Pass storage context to helper function so $(active_group) evaluates with updated value
function du-in:storage/kit/slots/process_group with storage du-in:temp

#Advance to next theme
scoreboard players add #menu themeIndex 1
execute store result storage du-in:temp theme_index int 1 run scoreboard players get #menu themeIndex

#Recurse to next theme passing updated theme_index compound
$execute if data storage du-in:main themes[$(theme_index)] run function du-in:storage/kit/slots/assign_theme with storage du-in:temp