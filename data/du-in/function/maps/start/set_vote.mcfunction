#Set the current map value to the winner's map value.
$execute unless entity @a[tag=specialEvent,tag=partyLeader] run scoreboard players set #main map $(value)
execute if entity @a[tag=specialEvent,tag=partyLeader] run scoreboard players set #main map 21

#Reset all players (including the fake players) mapVote to reset the tallies.
scoreboard players reset * mapVote

#If the map score is -1, then pick a random map.
execute if score #main map matches -1 run function du-in:maps/start/random
function du-in:maps/start/pick/init