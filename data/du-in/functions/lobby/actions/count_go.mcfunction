#This function resumes the map select countdown
tag @s remove countStop
tellraw @a [{"selector":"@s"},{"text":" has resumed the countdown!","color":"gray"}]
clear @s carrot_on_a_stick{countItem:1b}
scoreboard players reset @s countGo