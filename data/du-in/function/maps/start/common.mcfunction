#Start countdown
scoreboard players set #main startSeq 1

#Kill any game objects from previous games
execute at @e[type=armor_stand,tag=vendMachine] run fill ~ ~ ~ ~ ~1 ~ air

kill @e[type=!player,tag=mapSpecific]