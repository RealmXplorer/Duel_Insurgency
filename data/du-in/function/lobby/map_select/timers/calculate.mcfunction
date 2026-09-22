# Current countdown
execute store result score #main mapTimerTenLeft run scoreboard players get #main mapCountdown
execute store result score #main mapTimerFiveLeft run scoreboard players get #main mapCountdown
execute store result score #main mapTimerFourLeft run scoreboard players get #main mapCountdown
execute store result score #main mapTimerThreeLeft run scoreboard players get #main mapCountdown
execute store result score #main mapTimerTwoLeft run scoreboard players get #main mapCountdown
execute store result score #main mapTimerOneLeft run scoreboard players get #main mapCountdown

# Subtract target countdowns
scoreboard players remove #main mapTimerTenLeft 200
scoreboard players remove #main mapTimerFiveLeft 100
scoreboard players remove #main mapTimerFourLeft 80
scoreboard players remove #main mapTimerThreeLeft 60
scoreboard players remove #main mapTimerTwoLeft 40
scoreboard players remove #main mapTimerOneLeft 20

# Set remaining times to storage
execute store result storage du-in:main mpselect.timerten int 1 run scoreboard players get #main mapTimerTenLeft
execute store result storage du-in:main mpselect.timerfive int 1 run scoreboard players get #main mapTimerFiveLeft
execute store result storage du-in:main mpselect.timerfour int 1 run scoreboard players get #main mapTimerFourLeft
execute store result storage du-in:main mpselect.timerthree int 1 run scoreboard players get #main mapTimerThreeLeft
execute store result storage du-in:main mpselect.timertwo int 1 run scoreboard players get #main mapTimerTwoLeft
execute store result storage du-in:main mpselect.timerone int 1 run scoreboard players get #main mapTimerOneLeft

function du-in:lobby/map_select/timers/resume with storage du-in:main mpselect