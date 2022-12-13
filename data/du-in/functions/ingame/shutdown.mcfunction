#Start shutdown
execute if entity @a[tag=playing,tag=!working] run scoreboard players set #main shutdown 1
execute if entity @a[tag=spectating,tag=!working] run scoreboard players set #main shutdown 1