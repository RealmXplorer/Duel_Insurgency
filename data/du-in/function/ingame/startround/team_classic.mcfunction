tag @a add cIngame
bossbar set minecraft:classicblue players @a
bossbar set minecraft:classicred players @a

execute if score #main tFFAGoal matches 25 run scoreboard objectives modify classicTeamKills displayname ["",{"text":"Classic Kills ","bold":true,"color":"gold"},{"text":"(of 25)","color":"gray"}]
execute if score #main tFFAGoal matches 35 run scoreboard objectives modify classicTeamKills displayname ["",{"text":"Classic Kills ","bold":true,"color":"gold"},{"text":"(of 35)","color":"gray"}]
execute if score #main tFFAGoal matches 50 run scoreboard objectives modify classicTeamKills displayname ["",{"text":"Classic Kills ","bold":true,"color":"gold"},{"text":"(of 50)","color":"gray"}]
execute if score #main tFFAGoal matches 15 run scoreboard objectives modify classicTeamKills displayname ["",{"text":"Classic Kills ","bold":true,"color":"gold"},{"text":"(of 15)","color":"gray"}]
execute if score #main tFFAGoal matches 20 run scoreboard objectives modify classicTeamKills displayname ["",{"text":"Classic Kills ","bold":true,"color":"gold"},{"text":"(of 20)","color":"gray"}]

execute unless score #main pylonsDestroyed matches 3 run schedule function du-in:music/ingame/classic 4s

scoreboard objectives setdisplay sidebar classicTeamKills
#execute if entity @a[tag=!teamMode] run bossbar set bossbar:classic visible true
bossbar set minecraft:classicred visible true
bossbar set minecraft:classicblue visible true
tag @a remove cl
