tellraw @a {text:"Game shutdown canceled!",bold:true,color:green}
scoreboard players reset #main shutdown
#scoreboard players reset #main shutdownTimer
schedule clear du-in:other/shutdown/timer/ten_second
schedule clear du-in:other/shutdown/timer/end_timer
tag @a remove falseWin