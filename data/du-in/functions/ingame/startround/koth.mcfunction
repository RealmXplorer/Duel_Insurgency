tag @a add kothIngame

execute if score #main kothCap matches 2000 run scoreboard objectives modify kothTimer displayname ["",{"text":"KOTH Points ","bold":true,"color":"red"},{"text":"(of 2000)","color":"gray"}]
execute if score #main kothCap matches 2500 run scoreboard objectives modify kothTimer displayname ["",{"text":"KOTH Points ","bold":true,"color":"red"},{"text":"(of 2500)","color":"gray"}]
execute if score #main kothCap matches 3000 run scoreboard objectives modify kothTimer displayname ["",{"text":"KOTH Points ","bold":true,"color":"red"},{"text":"(of 3000)","color":"gray"}]
execute if score #main kothCap matches 5000 run scoreboard objectives modify kothTimer displayname ["",{"text":"KOTH Points ","bold":true,"color":"red"},{"text":"(of 5000)","color":"gray"}]
execute if score #main kothCap matches 1000 run scoreboard objectives modify kothTimer displayname ["",{"text":"KOTH Points ","bold":true,"color":"red"},{"text":"(of 1000)","color":"gray"}]

execute if entity @a run scoreboard objectives setdisplay sidebar kothTimer

team join Classic @a[tag=!spectating]
scoreboard players set @a[tag=!spectating,tag=!working] kothTimer 0
advancement grant @a[tag=playing] only du-in:gamemode/koth
tag @a remove kothl