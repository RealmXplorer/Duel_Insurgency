#If a player has equal to or more than required kill amount, add tag win
execute if score Red teamDeaths = Blue teamDeaths run tag @a add win

execute if score Blue teamDeaths = #main scoreMost run tag @a[tag=team2] add win
execute if score Red teamDeaths = #main scoreMost run tag @a[tag=team1] add win

#Add lose to all other players
execute if score Blue teamDeaths > Red teamDeaths run tag @a[tag=dmIngame,tag=team2] add lose
execute if score Red teamDeaths > Blue teamDeaths run tag @a[tag=dmIngame,tag=team1] add lose

#Add lose to spectators
tag @a[tag=spectating] add lose