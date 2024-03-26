#Set the current map value to the winner's map value.
$scoreboard players set #main map $(value)

#Reset all players (including the fake players) mapVote to reset the tallies.
scoreboard players reset * mapVote

#If the map score is -1, then pick a random map.
#execute if score #main map matches -1 run tag @a[limit=1,tag=!working] add voteRandom
execute if score #main map matches -1 run function du-in:maps/start/random
