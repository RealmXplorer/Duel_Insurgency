scoreboard players add #main shutdownTimer 1
tag @a[tag=playing] add falseWin
tag @a[tag=spectating] add falseWin

#Announce and play sound
execute if score #main shutdownTimer matches 1 run function du-in:other/shutdown/start_display

execute if score #main shutdownTimer matches 400 run function du-in:other/shutdown/ten_second

execute if score #main shutdownTimer matches 600 run function du-in:other/shutdown/end_timer