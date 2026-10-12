
#Copy head entry from new_kit list to temporary storage
data modify storage du-in:temp_kit entry set from storage du-in:new_kit list[0]

#Check if group is "unlock" (Legendary) vs Regular
execute if data storage du-in:temp_kit entry{group:"unlock"} unless data storage du-in:temp_kit entry.id run function du-in:storage/kit/custom/assign_legendary_id
execute unless data storage du-in:temp_kit entry{group:"unlock"} unless data storage du-in:temp_kit entry.id run function du-in:storage/kit/custom/assign_id

#If ID assignment succeeded, append character into main kit list
execute if data storage du-in:temp_kit entry.id run data modify storage du-in:kit list append from storage du-in:temp_kit entry

#Remove processed item from queue
data remove storage du-in:new_kit list[0]
data remove storage du-in:temp_kit entry

#Recurse if more characters remain in new_kit list
execute if data storage du-in:new_kit list[0] run function du-in:storage/kit/custom/process_kit