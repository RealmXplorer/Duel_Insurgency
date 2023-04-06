tag @a add cqIngame
bossbar set conquest:blue players @a
bossbar set conquest:red players @a
bossbar set bossbar:gametimer players @a

scoreboard objectives modify capturePoints displayname [{"text":"Conquest Points ","bold":true,"color":"blue"}]

execute store result score #main maxTimer run scoreboard players get #main gameTimeMax
bossbar set bossbar:gametimer visible true

scoreboard objectives setdisplay sidebar capturePoints
advancement grant @a[tag=playing] only du-in:gamemode/conquest
tag @a remove cql