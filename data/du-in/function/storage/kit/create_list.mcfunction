#Extract kit object at current index
$data modify storage du-in:temp current set from storage du-in:kit list[$(index)]

#Convert empty group tag ("") to "easter_egg" to prevent macro syntax errors
execute if data storage du-in:temp current{group:""} run data modify storage du-in:temp current.group set value "easter_egg"

#Sort groups and build random pools
function du-in:storage/kit/sort_group with storage du-in:temp current

#Remove 1 from index and count list again
scoreboard players remove #main listLength 1
execute store result storage du-in:main list.index int 1 run scoreboard players get #main listLength
execute if score #main listLength matches 0.. run function du-in:storage/kit/create_list with storage du-in:main list

