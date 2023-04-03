execute if score #main kBluePoints = #main kothMost run tag @a[tag=team2] add win
execute if score #main kRedPoints = #main kothMost run tag @s[tag=team1] add win

#Add lose to all other players
execute if score #main kBluePoints < #main kRedPoints run tag @a[tag=cIngame,tag=team2] add lose
execute if score #main kRedPoints < #main kBluePoints run tag @a[tag=cIngame,tag=team1] add lose

#Add lose to spectators
tag @a[tag=spectating] add lose