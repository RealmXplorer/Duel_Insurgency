#If the current map's votes are higher than the current winner, set the winner's score to the new highest
$execute if score #map$(vote) mapVote > #main mapWinner store result score #main mapWinner run scoreboard players get #map$(vote) mapVote

#Store the vote count into the storage
# execute store result storage du-in:finalvote map.vote int 1 run scoreboard players get #main mapWinner

#If the current map's vote is equal to the winner, set the winner's map value.
$execute if score #map$(vote) mapVote = #main mapWinner store result score #main mapWinnerValue run scoreboard players get @s mapVote

#Store the winner's map value into the storage
execute store result storage du-in:mapscore map.value int 1 run scoreboard players get #main mapWinnerValue
