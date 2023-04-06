#If a player has equal to or more than required kill amount, add tag win
execute if score Red capturePoints = Blue capturePoints run tag @a add win

execute if score Blue capturePoints = #main scoreMost run tag @a[tag=team2] add win
execute if score Red capturePoints = #main scoreMost run tag @a[tag=team1] add win

#Add lose to all other players
execute if score Blue capturePoints < Red capturePoints run tag @a[tag=cqIngame,tag=team2] add lose
execute if score Red capturePoints < Blue capturePoints run tag @a[tag=cqIngame,tag=team1] add lose

#Add lose to spectators
tag @a[tag=spectating] add lose