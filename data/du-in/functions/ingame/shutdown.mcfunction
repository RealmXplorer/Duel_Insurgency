#Start shutdown
execute if entity @a[tag=playing] run scoreboard players set #main shutdown 1
execute if entity @a[tag=spectating] run scoreboard players set #main shutdown 1