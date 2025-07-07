#Test for amount of people on team
scoreboard players set #main teamOnline 0
execute as @a[tag=teamPicked] run scoreboard players add #main teamOnline 1

#Test for number of people on blue
scoreboard players set #main blueOnline 0
execute as @a[tag=team2] run scoreboard players add #main blueOnline 1

#Test for number of people on red
scoreboard players set #main redOnline 0
execute as @a[tag=team1] run scoreboard players add #main redOnline 1
