#Fetch group string into active_group
$data modify storage du-in:temp active_group set from storage du-in:main themes[$(theme_index)]

#Pass storage context to helper function so $(active_group) evaluates with updated value
function du-in:storage/kit/slots/process_group with storage du-in:temp

#Advance to next theme
scoreboard players add #menu themeIndex 1
execute store result storage du-in:temp theme_index int 1 run scoreboard players get #menu themeIndex

#Recurse to next theme passing updated theme_index compound
$execute if data storage du-in:main themes[$(theme_index)] run function du-in:storage/kit/slots/assign_theme with storage du-in:temp