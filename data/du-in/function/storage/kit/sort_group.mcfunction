#Store in group array from kit's group
$data modify storage du-in:groups group.$(group) append from storage du-in:temp current

#Store in general pool if not unlock or easter_egg
execute unless data storage du-in:temp current{group:"unlock"} unless data storage du-in:temp current{group:"easter_egg"} run data modify storage du-in:random pool append from storage du-in:temp current

#Stpre in unlock pool if legendary
execute if data storage du-in:temp current{group:"unlock"} run data modify storage du-in:random unlock_pool append from storage du-in:temp current

#Adjust Unlock's number to match legendary numbers
execute store result score #main random run data get storage du-in:random unlock_pool
scoreboard players remove #main random 1
scoreboard players add #main random 1000

#Set max values into storages
execute store result storage du-in:main random.max int 1 run data get storage du-in:random pool
execute store result storage du-in:main random.unlock_max int 1 run scoreboard players get #main random