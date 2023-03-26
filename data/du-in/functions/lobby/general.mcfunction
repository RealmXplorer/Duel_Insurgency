#Timer for lobby sidebar for scroll
scoreboard players add #main sidebarTimer 1
execute if score #main sidebarTimer matches 481.. run scoreboard players set #main sidebarTimer 0

#Test for amount of people on team
execute if entity @a[tag=teamMode] run scoreboard players set #main teamOnline 0
execute as @a[tag=teamPicked] run scoreboard players add #main teamOnline 1

#Test for number of people on blue
execute if entity @a[tag=teamMode] run scoreboard players set #main blueOnline 0
execute as @a[tag=team2] run scoreboard players add #main blueOnline 1

#Test for number of people on red
execute if entity @a[tag=teamMode] run scoreboard players set #main redOnline 0
execute as @a[tag=team1] run scoreboard players add #main redOnline 1

#Test for number of people with kit picked
execute if entity @a[scores={lobby=3}] run scoreboard players set #main kitOnline 0
execute as @a[tag=ready,tag=lobby] run scoreboard players add #main kitOnline 1

#Make sure player is in right lobby
execute at @e[type=marker,tag=lobbyPoint] as @a[distance=..25] unless score @s lobby = #main lobby run function du-in:lobby/reset

#Pick gamemode
execute if score #gamemode gamemode matches 1..5 run function du-in:lobby/pick

#Timer for tournament kit picker
scoreboard players add #main kitWheel 1
execute if score #main kitWheel matches 22.. run scoreboard players set #main kitWheel 1

#Give all in Lobby health#
effect give @a[tag=!playing] minecraft:instant_health infinite 100 true
##The not playing tag is important for if a player joins mid-match.

#Start game#
execute if score #main startSeq matches 1.. run function du-in:ingame/startround/timer/start_timer

#Pick Map#
execute if score #main mapCountdown matches ..1 run function du-in:maps/init