#This is for setting up DFC events
scoreboard players reset * dfcQueue

#Set number of rounds +1
scoreboard players set #main dfcMax 2

#Match 1
scoreboard players set player1 dfcQueue 1
scoreboard players set player2 dfcQueue 1

#Match 2
scoreboard players set player3 dfcQueue 2
scoreboard players set player4 dfcQueue 2

tag @s add specialEvent