# MapVOTE #
# execute if score #voting map1Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map1Vote
# execute if score #voting map2Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map2Vote
# execute if score #voting map3Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map3Vote
# execute if score #voting map4Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map4Vote
# execute if score #voting map5Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map5Vote
# execute if score #voting map6Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map6Vote
# execute if score #voting map7Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map7Vote
# execute if score #voting map8Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map8Vote
# execute if score #voting map9Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map9Vote
# execute if score #voting map10Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map10Vote
# execute if score #voting map11Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map11Vote
# execute if score #voting map12Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map12Vote
# execute if score #voting map13Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map13Vote
# execute if score #voting map14Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map14Vote
# execute if score #voting map15Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map15Vote
# execute if score #voting map16Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map16Vote
# execute if score #voting map17Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map17Vote
# execute if score #voting map18Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map18Vote
# execute if score #voting map19Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map19Vote
# execute if score #voting map20Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map20Vote
# execute if score #voting mapRandomVote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting mapRandomVote

#$execute if score #voting map$(vote)Vote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #voting map$(vote)Vote

$execute if score #map$(vote) mapVote > #voting mapWinner store result score #voting mapWinner run scoreboard players get #map$(vote) mapVote

execute store result storage du-in:finalvote map.vote int 1 run scoreboard players get #voting mapWinner

$execute if score #map$(vote) mapVote = #voting mapWinner store result score #voting mapWinnerValue run scoreboard players get @s mapVote
execute store result storage du-in:mapscore map.value int 1 run scoreboard players get #voting mapWinnerValue

#tag @s remove notVoted