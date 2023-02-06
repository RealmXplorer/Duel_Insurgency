
tag @s[tag=winend] add win
execute if entity @s[tag=win] run scoreboard players set #main endTime 6
execute if entity @s[tag=winend] run scoreboard players set #main endTime 6

scoreboard players reset @s killIngame
scoreboard players reset @s kothTimer

execute if entity @a[tag=partyLeader,tag=lobby,tag=!shop,tag=!parkour] run tp @s @a[tag=partyLeader,limit=1]
execute if entity @a[tag=partyLeader,tag=lobby,tag=!shop,tag=parkour] run tp @s -999 13 517 -90 0
execute if entity @a[tag=partyLeader,tag=lobby,tag=shop,tag=!parkour] run tp @s -999 13 517 -90 0

team join lobby @s[tag=!playing,tag=!ready,tag=!dmDead,tag=!spectating,tag=!team1,tag=!team2,tag=!AFK]

execute if entity @a[tag=partyLeader,tag=cl] run tag @s add cl
execute if entity @a[tag=partyLeader,tag=dml] run tag @s add dml
execute if entity @a[tag=partyLeader,tag=kothl] run tag @s add kothl
execute if entity @a[tag=partyLeader,tag=ctfl] run tag @s add ctfl
execute if entity @a[tag=partyLeader,tag=cql] run tag @s add cql
#execute if entity @a[tag=partyLeader,tag=exl] run tag @s add exl
execute if entity @a[tag=partyLeader,tag=cmap] run tag @s add cmap
execute if entity @a[tag=partyLeader,tag=kitMenu,tag=lobby] run tag @s add kitMenu