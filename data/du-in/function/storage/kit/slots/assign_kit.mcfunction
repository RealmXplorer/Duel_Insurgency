# #Calculate base slot: slot = index + 1
# scoreboard players operation #menu testSlot = #menu kitIndex
# scoreboard players add #menu testSlot 1

# #Bypass slot 9 (Theme Display icon slot)
# execute if score #menu testSlot matches 9.. run scoreboard players add #menu testSlot 1

# #OVERFLOW CHECK: Throw error if slot is 18 or higher
# execute if score #menu testSlot matches 18.. run tellraw @a [{"text":"[DUEL ERROR] ","color":"red","bold":true},{"text":"Group '","color":"red"},{"nbt":"active_group","storage":"du-in:temp","color":"yellow"},{"text":"' exceeds max capacity (16 kits)! Kit at index ","color":"red"},{"score":{"name":"#menu","objective":"kitIndex"},"color":"yellow"},{"text":" attempted to use invalid slot ","color":"red"},{"score":{"name":"#menu","objective":"testSlot"},"color":"yellow"},{"text":".","color":"red"}]

# #Write valid slot number directly into the group compound
# $execute if score #menu testSlot matches ..17 store result storage du-in:groups group.$(active_group)[$(kit_index)].slot int 1 run scoreboard players get #menu testSlot

# #Increment kit index
# scoreboard players add #menu kitIndex 1

# #Write kit_index into storage BEFORE recursing
# execute if score #menu kitIndex < #menu groupSize store result storage du-in:temp kit_index int 1 run scoreboard players get #menu kitIndex

# #Recurse to next kit using updated du-in:temp
# execute if score #menu kitIndex < #menu groupSize run function du-in:storage/kit/slots/assign_kit with storage du-in:temp


# 1. Base slot equals array index directly (Index 0 -> Slot 0)
scoreboard players operation #menu testSlot = #menu kitIndex

# 2. Bypass slot 8 (Far-right reserved control slot on row 1)
execute if score #menu testSlot matches 8.. run scoreboard players add #menu testSlot 1

# 3. OVERFLOW CHECK: Throw error if slot is 17 or higher (Max 16 kits per theme)
execute if score #menu testSlot matches 17.. run tellraw @a [{"text":"[DUEL ERROR] ","color":"red","bold":true},{"text":"Group '","color":"red"},{"nbt":"active_group","storage":"du-in:temp","color":"yellow"},{"text":"' exceeds max capacity (16 kits)! Kit at index ","color":"red"},{"score":{"name":"#menu","objective":"kitIndex"},"color":"yellow"},{"text":" attempted to use invalid slot ","color":"red"},{"score":{"name":"#menu","objective":"testSlot"},"color":"yellow"},{"text":".","color":"red"}]

# 4. Write valid slot number directly into the group compound
$execute if score #menu testSlot matches ..16 store result storage du-in:groups group.$(active_group)[$(kit_index)].slot int 1 run scoreboard players get #menu testSlot

# 5. Increment kit index
scoreboard players add #menu kitIndex 1

# 6. Write kit_index into storage BEFORE recursing
execute if score #menu kitIndex < #menu groupSize store result storage du-in:temp kit_index int 1 run scoreboard players get #menu kitIndex

# 7. Recurse to next kit using updated du-in:temp
execute if score #menu kitIndex < #menu groupSize run function du-in:storage/kit/slots/assign_kit with storage du-in:temp