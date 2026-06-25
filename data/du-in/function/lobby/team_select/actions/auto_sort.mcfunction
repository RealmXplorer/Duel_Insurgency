#Work to do:
#Auto-sort if not all players pick teams

#Objectives used
scoreboard objectives add huskCount dummy
scoreboard objectives add huskTeamCount dummy
scoreboard objectives add redTeamCount dummy
scoreboard objectives add blueTeamCount dummy

#Set Husks
scoreboard players set Realm_Xplorer huskCount 0
execute as @e[type=husk] run scoreboard players add Realm_Xplorer huskCount 1

#Set Husk Teams
scoreboard players set Realm_Xplorer huskTeamCount 0
execute as @e[type=husk,tag=hasTeam] run scoreboard players add Realm_Xplorer huskTeamCount 1

#Set Blue team count
scoreboard players set Realm_Xplorer blueTeamCount 0
execute as @e[type=husk,tag=team2] run scoreboard players add Realm_Xplorer blueTeamCount 1

#Set Red Team count
scoreboard players set Realm_Xplorer redTeamCount 0
execute as @e[type=husk,tag=team1] run scoreboard players add Realm_Xplorer redTeamCount 1

#Sort teams
tag @p add sort
execute if entity @a[tag=sort] if score Realm_Xplorer huskTeamCount < Realm_Xplorer huskCount if score Realm_Xplorer redTeamCount >= Realm_Xplorer blueTeamCount as @n[type=husk,tag=!hasTeam,tag=!team1,tag=!team2] run tag @s add team2
execute if entity @a[tag=sort] if score Realm_Xplorer huskTeamCount < Realm_Xplorer huskCount if score Realm_Xplorer redTeamCount <= Realm_Xplorer blueTeamCount as @n[type=husk,tag=!hasTeam,tag=!team1,tag=!team2] run tag @s add team1
execute if score Realm_Xplorer huskTeamCount = Realm_Xplorer huskCount run tag @a remove sort

#Set teams, colors, and glowing for husks
team join Blue @e[type=husk,tag=team2]
team join Red @e[type=husk,tag=team1]
effect give @e[type=husk] minecraft:glowing infinite 1 true