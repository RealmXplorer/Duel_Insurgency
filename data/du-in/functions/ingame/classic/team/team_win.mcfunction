#If red wins
execute if score #main redPoints >= #main tFFAGoal run tag @a[tag=team1] add win
execute if score #main redPoints >= #main tFFAGoal run tag @a[tag=team2] add lose

#If blue wins
#execute if score #main bluePoints >= #main tFFAGoal run tag @a[tag=team2] add win
#execute if score #main bluePoints >= #main tFFAGoal run tag @a[tag=team1] add lose

execute if score #main bluePoints >= #main tFFAGoal run tag @a[tag=team2] add win
execute if score #main bluePoints >= #main tFFAGoal run tag @a[tag=team1] add lose