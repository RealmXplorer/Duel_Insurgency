#RED WIN#
execute if score #main redPoints >= #main tKothCap run tag @a[tag=team1] add win
execute if score #main redPoints >= #main tKothCap run tag @a[tag=team2] add lose

#BLUE WIN#
execute if score #main bluePoints >= #main tKothCap run tag @a[tag=team2] add win
execute if score #main bluePoints >= #main tKothCap run tag @a[tag=team1] add lose