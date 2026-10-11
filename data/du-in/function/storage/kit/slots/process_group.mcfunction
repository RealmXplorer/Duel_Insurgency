# 1. Get size of current group array (active_group now evaluates correctly)
$execute store result score #menu groupSize run data get storage du-in:groups group.$(active_group)

# 2. If group has kits, set kitIndex to 0 and invoke assign_kit
execute if score #menu groupSize matches 1.. run scoreboard players set #menu kitIndex 0
execute if score #menu groupSize matches 1.. store result storage du-in:temp kit_index int 1 run scoreboard players get #menu kitIndex
execute if score #menu groupSize matches 1.. run function du-in:storage/kit/slots/assign_kit with storage du-in:temp