tag @a add cqIngame
bossbar set conquest:blue players @a
bossbar set conquest:red players @a
execute if score #main cqCap matches 10000 run scoreboard objectives modify capturePoints displayname ["",{"text":"Conquest Points ","bold":true,"color":"blue"},{"text":"(of 10,000)","color":"gray"}]
execute if score #main cqCap matches 12000 run scoreboard objectives modify capturePoints displayname ["",{"text":"Conquest Points ","bold":true,"color":"blue"},{"text":"(of 12,000)","color":"gray"}]
execute if score #main cqCap matches 15000 run scoreboard objectives modify capturePoints displayname ["",{"text":"Conquest Points ","bold":true,"color":"blue"},{"text":"(of 15,000)","color":"gray"}]
execute if score #main cqCap matches 5000 run scoreboard objectives modify capturePoints displayname ["",{"text":"Conquest Points ","bold":true,"color":"blue"},{"text":"(of 5,000)","color":"gray"}]
execute if score #main cqCap matches 7000 run scoreboard objectives modify capturePoints displayname ["",{"text":"Conquest Points ","bold":true,"color":"blue"},{"text":"(of 7,000)","color":"gray"}]


bossbar set conquest:blue visible true
bossbar set conquest:red visible true
#team join Red @a[scores={team=1},tag=!AFK]
#team join Blue @a[scores={team=2},tag=!AFK]
scoreboard objectives setdisplay sidebar capturePoints
advancement grant @a[tag=playing] only du-in:gamemode/conquest
tag @a remove cql