#Start countdown
scoreboard players set #main startSeq 1

#Kill any game objects from previous games
execute at @e[type=armor_stand,tag=vendMachine] run setblock ~ ~1 ~ air
execute at @e[type=armor_stand,tag=vendMachine] run setblock ~ ~ ~ air
kill @e[type=!player,tag=mapSpecific]