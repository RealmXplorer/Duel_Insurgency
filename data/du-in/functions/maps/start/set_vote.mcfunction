# CMAP VOTE #
# execute if score #voting map1Vote = #voting mapWinner run scoreboard players set #main map 1
# execute if score #voting map2Vote = #voting mapWinner run scoreboard players set #main map 2
# execute if score #voting map3Vote = #voting mapWinner run scoreboard players set #main map 3
# execute if score #voting map4Vote = #voting mapWinner run scoreboard players set #main map 4
# execute if score #voting map5Vote = #voting mapWinner run scoreboard players set #main map 5
# execute if score #voting map6Vote = #voting mapWinner run scoreboard players set #main map 6
# execute if score #voting map7Vote = #voting mapWinner run scoreboard players set #main map 7
# execute if score #voting map8Vote = #voting mapWinner run scoreboard players set #main map 8
# execute if score #voting map9Vote = #voting mapWinner run scoreboard players set #main map 9
# execute if score #voting map10Vote = #voting mapWinner run scoreboard players set #main map 10
# execute if score #voting map11Vote = #voting mapWinner run scoreboard players set #main map 11
# execute if score #voting map12Vote = #voting mapWinner run scoreboard players set #main map 12
# execute if score #voting map13Vote = #voting mapWinner run scoreboard players set #main map 13
# execute if score #voting map14Vote = #voting mapWinner run scoreboard players set #main map 14
# execute if score #voting map15Vote = #voting mapWinner run scoreboard players set #main map 15
# execute if score #voting map16Vote = #voting mapWinner run scoreboard players set #main map 16
# execute if score #voting map17Vote = #voting mapWinner run scoreboard players set #main map 17
# execute if score #voting map18Vote = #voting mapWinner run scoreboard players set #main map 18
# execute if score #voting map19Vote = #voting mapWinner run scoreboard players set #main map 19
# execute if score #voting map20Vote = #voting mapWinner run scoreboard players set #main map 20
# execute if score #voting mapRandomVote = #voting mapWinner run tag @a[limit=1,tag=!working] add voteRandom

#$execute if score #voting map$(vote)Vote = #voting mapWinner run scoreboard players set #main map $(vote)

$scoreboard players set #main map $(value)
execute if score #main map matches -1 run tag @a[limit=1,tag=!working] add voteRandom
