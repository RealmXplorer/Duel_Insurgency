#$ride @s[scores={jockeyTimer=0..,player=$(current)}] mount @e[type=chicken,scores={jockeyTimer=1..,player=$(current)},limit=1]
$ride @s[tag=jockeyDuration,scores={player=$(current)}] mount @e[type=chicken,tag=jockeyDuration,scores={player=$(current)},limit=1]

#say success layer 3