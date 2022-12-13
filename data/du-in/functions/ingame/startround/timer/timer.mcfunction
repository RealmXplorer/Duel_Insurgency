#Start Countdown
function du-in:ingame/startround/title/title

#Countdown timer
scoreboard players remove #main titleTimer2 1

#End timer
execute if score #main titleTimer2 matches ..0 run function du-in:ingame/startround/timer/end_timer