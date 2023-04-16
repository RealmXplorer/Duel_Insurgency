execute if score #main bluePoints = #main scoreMost run tag @a[tag=team2] add win
execute if score #main redPoints = #main scoreMost run tag @a[tag=team1] add win

#Add lose to all other players
execute if score #main bluePoints < #main redPoints run tag @a[tag=cIngame,tag=team2] add lose
execute if score #main redPoints < #main bluePoints run tag @a[tag=cIngame,tag=team1] add lose

#Add lose to spectators
tag @a[tag=spectating] add lose