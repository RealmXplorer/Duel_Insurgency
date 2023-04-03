tag @a add cIngame

scoreboard objectives modify classicTeamKills displayname ["",{"text":"Classic Kills ","bold":true,"color":"gold"}]

scoreboard objectives setdisplay sidebar classicTeamKills

team join Classic @a[tag=!spectating,tag=!teamMode,tag=!AFK]
scoreboard players set @a[tag=!spectating,tag=!working] killIngame 0
scoreboard players set @a[tag=!spectating,tag=!working] ctfKills 0
execute store result score #main maxTimer run scoreboard players get #main gameTimeMax
bossbar set bossbar:gametimer visible true

advancement grant @a[tag=playing] only du-in:gamemode/classic
tag @a remove cl
