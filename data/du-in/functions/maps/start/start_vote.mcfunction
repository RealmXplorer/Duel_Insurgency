#Find what Map is being voted for
execute store result storage du-in:mapvote map.vote int 1 run scoreboard players get @s mapVote

#Start Tally
function du-in:maps/start/tally_votes with storage du-in:mapvote map