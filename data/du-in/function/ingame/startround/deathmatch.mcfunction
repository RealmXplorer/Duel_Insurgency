tag @a add dmIngame
execute if score @a[tag=partyLeader,limit=1] maxLives matches 5 run scoreboard objectives modify Lives displayname ["",{text:"Lives ",bold:true,color:red},{text:"(5 lives)",color:gray}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 7 run scoreboard objectives modify Lives displayname ["",{text:"Lives ",bold:true,color:red},{text:"(7 lives)",color:gray}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 10 run scoreboard objectives modify Lives displayname ["",{text:"Lives ",bold:true,color:red},{text:"(10 lives)",color:gray}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 1 run scoreboard objectives modify Lives displayname ["",{text:"Lives ",bold:true,color:red},{text:"(1 life)",color:gray}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 3 run scoreboard objectives modify Lives displayname ["",{text:"Lives ",bold:true,color:red},{text:"(3 lives)",color:gray}]

execute unless score #main pylonsDestroyed matches 3 run schedule function du-in:music/ingame/deathmatch 4s

execute store result score @a[tag=dmIngame,tag=!spectating] Lives run scoreboard players get @a[tag=partyLeader,limit=1] maxLives
team join Deathmatch @a[tag=!spectating]
execute unless entity @a[tag=devMode,tag=partyLeader] if entity @a[tag=!teamMode] run execute store result score #main playerCount run team list Deathmatch
execute if entity @a[tag=devMode,tag=partyLeader] if entity @a[tag=!teamMode] run scoreboard players set #main playerCount 3

scoreboard objectives setdisplay sidebar Lives
tag @a remove dml