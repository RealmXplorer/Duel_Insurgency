#Start countdown
scoreboard players set #main startSeq 1

#Kill any game objects from previous games
kill @e[type=!player,tag=mapSpecific]

#Set all wandering trader values to empty
#execute as @e[type=minecraft:wandering_trader] run data modify entity @s Offers set value {}