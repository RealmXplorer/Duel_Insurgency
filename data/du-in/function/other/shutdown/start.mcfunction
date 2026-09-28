#scoreboard players add #main shutdownTimer 1
tag @a add falseWin
#function du-in:other/shutdown/timer/start_display

#Announce shutdown
tellraw @a {text:"Game shutdown in 30 seconds!",bold:true,color:dark_red}
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 100 0.5 1
playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1 0.5 1

#Schedule 10 second warning
schedule function du-in:other/shutdown/timer/ten_second 20s

#Schedule shutdown
schedule function du-in:other/shutdown/timer/end_timer 30s

#Announce and play sound
#execute if score #main shutdownTimer matches 1 run function du-in:other/shutdown/timer/start_display

#execute if score #main shutdownTimer matches 400 run function du-in:other/shutdown/timer/ten_second

#execute if score #main shutdownTimer matches 600 run function du-in:other/shutdown/timer/end_timer