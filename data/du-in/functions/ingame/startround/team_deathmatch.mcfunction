tag @a add dmIngame
execute if score @a[tag=partyLeader,limit=1] maxLives matches 5 run scoreboard objectives modify teamPool displayname ["",{"text":"Lives ","bold":true,"color":"red"},{"text":"(5 lives)","color":"gray"}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 7 run scoreboard objectives modify teamPool displayname ["",{"text":"Lives ","bold":true,"color":"red"},{"text":"(7 lives)","color":"gray"}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 10 run scoreboard objectives modify teamPool displayname ["",{"text":"Lives ","bold":true,"color":"red"},{"text":"(10 lives)","color":"gray"}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 1 run scoreboard objectives modify teamPool displayname ["",{"text":"Lives ","bold":true,"color":"red"},{"text":"(1 life)","color":"gray"}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 3 run scoreboard objectives modify teamPool displayname ["",{"text":"Lives ","bold":true,"color":"red"},{"text":"(3 lives)","color":"gray"}]

execute store result score Red teamPool run scoreboard players get @a[tag=partyLeader,limit=1] maxLives
execute store result score Blue teamPool run scoreboard players get @a[tag=partyLeader,limit=1] maxLives

execute unless score #main pylonsDestroyed matches 3 run schedule function du-in:music/ingame/deathmatch 4s

#scoreboard players set Red teamPool 5
#scoreboard players set Blue teamPool 5

#tag @a[tag=!working,tag=!musicOff] add song
#team join Deathmatch @a[tag=!spectating]
#execute if entity @a[tag=!teamMode] run execute store result score #main playerCount run team list Deathmatch
advancement grant @a[tag=playing] only du-in:gamemode/deathmatch
scoreboard objectives setdisplay sidebar teamPool
tag @a remove dml