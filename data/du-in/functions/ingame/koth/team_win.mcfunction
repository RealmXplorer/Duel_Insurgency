#RED WIN#
execute if score #main kRedPoints >= #main tKothCap run tag @a[tag=team1] add win
execute if score #main kRedPoints >= #main tKothCap run tag @a[tag=team2] add lose

#BLUE WIN#
execute if score #main kBluePoints >= #main tKothCap run tag @a[tag=team2] add win
execute if score #main kBluePoints >= #main tKothCap run tag @a[tag=team1] add lose