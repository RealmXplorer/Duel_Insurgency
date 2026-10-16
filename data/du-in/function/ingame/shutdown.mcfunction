#Start shutdown
execute if entity @a[tag=playing] run scoreboard players set #main shutdown 1
execute if entity @a[tag=spectating] run scoreboard players set #main shutdown 1

#Schedule timer
execute unless score #shutdown running matches 1 if score #main shutdown matches 1.. run function du-in:other/shutdown/init