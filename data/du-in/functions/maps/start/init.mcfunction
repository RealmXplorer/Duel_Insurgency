#Reset "voting"'s scores
#scoreboard players reset #main 
scoreboard players set #main mapWinner 0

#tag @a add notVoted

#Reset map vote colors
execute as @e[type=marker,tag=mapVote] at @s run setblock ~ ~-1 ~ minecraft:red_concrete destroy

#Kill map select entities
kill @e[tag=displayItem]

#Play sound
execute at @a run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5

#Tally Votes and compare to highest vote
execute as @a run function du-in:maps/start/start_vote

#Set the map score to the highest voted map
function du-in:maps/start/set_vote with storage du-in:mapscore map

#If random map wins vote, run
#execute as @a[tag=voteRandom] run function du-in:maps/start/random
#execute if score #main map matches -1 run function du-in:maps/start/random
#execute if score #main map matches -1 as @a[tag=partyLeader] run function du-in:maps/start/random

#Start game sequence depending on which map is chosen
#execute if score #main mapCountdown matches 1 run function du-in:maps/start/pick/init

#End function
scoreboard players reset #main mapCountdown