tag @a remove startgame
tag @a[tag=lobby,tag=playing] remove lobby
scoreboard players reset #main startSeq
gamemode adventure @a[tag=playing]

tag @e[tag=start,tag=startTimer,scores={startTime=80..}] remove start

scoreboard objectives setdisplay belowName Health
scoreboard objectives setdisplay list killStreak

tag @a[tag=!working] remove kitPicked
tag @a remove spectator

#execute if entity @a[tag=playing,tag=dmIngame,tag=teamMode] run execute store result score #main blueTeamCount run team list Blue
#execute if entity @a[tag=playing,tag=dmIngame,tag=teamMode] run execute store result score #main redTeamCount run team list Red

scoreboard players set @a music 0

scoreboard players reset @a lobby

title @a times 0 10 5
title @a[scores={team=1}] subtitle {"text":"Red Team","color":"red","bold":true}
title @a[scores={team=2}] subtitle {"text":"Blue Team","color":"blue","bold":true}

#tp @a[tag=inRing] 1996 7 1004 -135 0

execute if entity @a[scores={kit=21}] at @a[scores={kit=21},limit=1] run playsound minecraft:cuphead.announce.go master @a ~ ~ ~ 10 1

scoreboard players reset #main titleTimer2
