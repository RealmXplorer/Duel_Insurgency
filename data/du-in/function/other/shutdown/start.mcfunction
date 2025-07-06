scoreboard players add #main shutdownTimer 1
tag @a add falseWin

#Announce and play sound
execute if score #main shutdownTimer matches 1 run function du-in:other/shutdown/timer/start_display

execute if score #main shutdownTimer matches 400 run function du-in:other/shutdown/timer/ten_second

execute if score #main shutdownTimer matches 600 run function du-in:other/shutdown/timer/end_timer