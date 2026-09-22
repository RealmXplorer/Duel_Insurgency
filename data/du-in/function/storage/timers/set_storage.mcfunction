execute store result score #main timerClose run scoreboard players get #main gameTimeMax
scoreboard players remove #main timerClose 1000

#Save into storage
execute store result storage du-in:gamemode timer.max int 1 run scoreboard players get #main gameTimeMax
execute store result storage du-in:gamemode timer.half int 1 run scoreboard players get #main timerHalf
execute store result storage du-in:gamemode timer.close int 1 run scoreboard players get #main timerClose