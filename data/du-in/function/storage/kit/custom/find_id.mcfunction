# Check ID at current index
$execute store result score #main currentID run data get storage du-in:kit list[$(list_index)].id

# If ID is less than 1000 and higher than highest tracked regID, update regID
execute if score #main currentID matches ..999 if score #main currentID > #main regID run scoreboard players operation #main regID = #main currentID

# Recurse backward through list
scoreboard players remove #main listLength 1
execute if score #main listLength matches 0.. store result storage du-in:temp list_index int 1 run scoreboard players get #main listLength
execute if score #main listLength matches 0.. run function du-in:storage/kit/custom/find_id with storage du-in:temp