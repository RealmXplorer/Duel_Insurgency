#This function pauses the Map select countdown
tag @s add countStop
tellraw @a [{"selector":"@s"},{"text":" has stopped the countdown!","color":"gray"}]
clear @s carrot_on_a_stick{countItem:1b}
scoreboard players reset @s countStop