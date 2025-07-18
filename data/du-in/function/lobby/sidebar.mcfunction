#Count up
scoreboard players add #main sidebarTimer 1

#Scroll
execute if score #main sidebarTimer matches 120 run scoreboard objectives setdisplay sidebar Kills
execute if score #main sidebarTimer matches 240 run scoreboard objectives setdisplay sidebar Wins
execute if score #main sidebarTimer matches 360 run scoreboard objectives setdisplay sidebar Diamonds

#Reset
execute if score #main sidebarTimer matches 480.. run scoreboard players set #main sidebarTimer 0
