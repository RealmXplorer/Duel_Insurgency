#Reset "voting"'s scores
scoreboard players reset #voting
scoreboard players set #voting mapWinner 0

#Kill map select entities
kill @e[tag=displayItem]

#Tally votes
execute as @a[scores={mapVote=1}] run scoreboard players add #voting map1Vote 1
execute as @a[scores={mapVote=2}] run scoreboard players add #voting map2Vote 1
execute as @a[scores={mapVote=3}] run scoreboard players add #voting map3Vote 1
execute as @a[scores={mapVote=4}] run scoreboard players add #voting map4Vote 1
execute as @a[scores={mapVote=5}] run scoreboard players add #voting map5Vote 1
execute as @a[scores={mapVote=6}] run scoreboard players add #voting map6Vote 1
execute as @a[scores={mapVote=7}] run scoreboard players add #voting map7Vote 1
execute as @a[scores={mapVote=8}] run scoreboard players add #voting map8Vote 1
execute as @a[scores={mapVote=9}] run scoreboard players add #voting map9Vote 1
execute as @a[scores={mapVote=10}] run scoreboard players add #voting map10Vote 1
execute as @a[scores={mapVote=11}] run scoreboard players add #voting map11Vote 1
execute as @a[scores={mapVote=12}] run scoreboard players add #voting map12Vote 1
execute as @a[scores={mapVote=13}] run scoreboard players add #voting map13Vote 1
execute as @a[scores={mapVote=14}] run scoreboard players add #voting map14Vote 1
execute as @a[scores={mapVote=15}] run scoreboard players add #voting map15Vote 1
execute as @a[scores={mapVote=16}] run scoreboard players add #voting map16Vote 1
execute as @a[scores={mapVote=17}] run scoreboard players add #voting map17Vote 1
execute as @a[scores={mapVote=18}] run scoreboard players add #voting map18Vote 1
execute as @a[scores={mapVote=19}] run scoreboard players add #voting map19Vote 1
execute as @a[scores={mapVote=20}] run scoreboard players add #voting map20Vote 1
execute as @a[scores={mapVote=-1}] run scoreboard players add #voting mapRandomVote 1

#Play sound
execute at @a run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5

#Find map with highest vote
function du-in:maps/start/count_vote

#Set the map score to the highest voted map
function du-in:maps/start/set_vote

#If random map wins vote, run
execute if entity @a[tag=voteRandom] run tag @r add mapRandom
execute as @a[tag=voteRandom] run function du-in:maps/start/random

#Start game sequence depending on which map is chosen
execute if score #main mapCountdown matches 1 run function du-in:maps/start/pick/init

#End function
scoreboard players reset #main mapCountdown