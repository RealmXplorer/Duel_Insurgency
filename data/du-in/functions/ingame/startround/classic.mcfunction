tag @a add cIngame

execute if score #main killCap matches 10 run scoreboard objectives modify killIngame displayname ["",{"text":"Classic Kills ","bold":true,"color":"gold"},{"text":"(of 10)","color":"gray"}]
execute if score #main killCap matches 7 run scoreboard objectives modify killIngame displayname ["",{"text":"Classic Kills ","bold":true,"color":"gold"},{"text":"(of 7)","color":"gray"}]
execute if score #main killCap matches 15 run scoreboard objectives modify killIngame displayname ["",{"text":"Classic Kills ","bold":true,"color":"gold"},{"text":"(of 15)","color":"gray"}]
execute if score #main killCap matches 5 run scoreboard objectives modify killIngame displayname ["",{"text":"Classic Kills ","bold":true,"color":"gold"},{"text":"(of 5)","color":"gray"}]
execute if score #main killCap matches 12 run scoreboard objectives modify killIngame displayname ["",{"text":"Classic Kills ","bold":true,"color":"gold"},{"text":"(of 12)","color":"gray"}]

scoreboard objectives setdisplay sidebar killIngame

team join Classic @a[tag=!spectating,tag=!teamMode,tag=!AFK]
scoreboard players set @a[tag=!spectating,tag=!working] killIngame 0
advancement grant @a[tag=playing] only du-in:classic
tag @a remove cl
