#If a player has equal to or more than required kill amount, add tag win
execute if score #main cBluePoints = #main classicMost run tag @a[tag=team2] add win
execute if score #main cRedPoints = #main classicMost run tag @s[tag=team1] add win

#Add lose to all other players
execute if score #main cBluePoints < #main cRedPoints run tag @a[tag=cIngame,tag=team2] add lose
execute if score #main cRedPoints < #main cBluePoints run tag @a[tag=cIngame,tag=team1] add lose

#Add lose to spectators
tag @a[tag=spectating] add lose