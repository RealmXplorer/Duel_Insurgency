tag @a add dmIngame
execute if score @a[tag=partyLeader,limit=1] maxLives matches 5 run scoreboard objectives modify Lives displayname ["",{"text":"Lives ","bold":true,"color":"red"},{"text":"(5 lives)","color":"gray"}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 7 run scoreboard objectives modify Lives displayname ["",{"text":"Lives ","bold":true,"color":"red"},{"text":"(7 lives)","color":"gray"}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 10 run scoreboard objectives modify Lives displayname ["",{"text":"Lives ","bold":true,"color":"red"},{"text":"(10 lives)","color":"gray"}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 1 run scoreboard objectives modify Lives displayname ["",{"text":"Lives ","bold":true,"color":"red"},{"text":"(1 life)","color":"gray"}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 3 run scoreboard objectives modify Lives displayname ["",{"text":"Lives ","bold":true,"color":"red"},{"text":"(3 lives)","color":"gray"}]

execute store result score @a[tag=dmIngame] Lives run scoreboard players get @a[tag=partyLeader,limit=1] maxLives
#tag @a[tag=!working,tag=!musicOff] add song
team join Deathmatch @a[tag=!spectating]
execute if entity @a[tag=!teamMode] run execute store result score #main playerCount run team list Deathmatch
advancement grant @a[tag=playing] only du-in:gamemode/deathmatch
scoreboard objectives setdisplay sidebar Lives
tag @a remove dml