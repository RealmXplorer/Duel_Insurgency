tag @a add kothIngame
bossbar set minecraft:bluekoth players @a
bossbar set minecraft:redkoth players @a

execute if score #main tKothCap matches 2500 run scoreboard objectives modify kothTeamTimer displayname ["",{"text":"KOTH Team Points ","bold":true,"color":"red"},{"text":"(of 2500)","color":"gray"}]
execute if score #main tKothCap matches 3000 run scoreboard objectives modify kothTeamTimer displayname ["",{"text":"KOTH Team Points ","bold":true,"color":"red"},{"text":"(of 3000)","color":"gray"}]
execute if score #main tKothCap matches 5000 run scoreboard objectives modify kothTeamTimer displayname ["",{"text":"KOTH Team Points ","bold":true,"color":"red"},{"text":"(of 5000)","color":"gray"}]
execute if score #main tKothCap matches 7000 run scoreboard objectives modify kothTeamTimer displayname ["",{"text":"KOTH Team Points ","bold":true,"color":"red"},{"text":"(of 7000)","color":"gray"}]
execute if score #main tKothCap matches 1500 run scoreboard objectives modify kothTeamTimer displayname ["",{"text":"KOTH Team Points ","bold":true,"color":"red"},{"text":"(of 1500)","color":"gray"}]

scoreboard players set @a[tag=!spectating,tag=!working] kothTimer 0
scoreboard objectives setdisplay sidebar kothTeamTimer
bossbar set minecraft:redkoth visible true
bossbar set minecraft:bluekoth visible true
advancement grant @a[tag=playing] only du-in:koth
tag @a remove kothl