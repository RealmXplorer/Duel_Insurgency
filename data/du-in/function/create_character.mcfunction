scoreboard players add #main kitMax 1
execute store result storage du-in:new_kit kit.num int 1 run scoreboard players get #main kitMax
function du-in:storage/kit/add_list with storage du-in:new_kit kit
