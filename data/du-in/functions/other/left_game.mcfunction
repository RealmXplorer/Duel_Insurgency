stopsound @s
tag @s remove partyLeader
scoreboard players reset @s titleTimer
scoreboard players reset @s titleTimer2
scoreboard players reset @s healthTimer
scoreboard players reset @s regenTimer
tag @s remove flagGot
tag @s remove startgame
tag @s remove countStop
advancement revoke @s only du-in:utility/kill

execute if entity @a[tag=partyLeader,tag=playing,tag=!win,tag=!lose,tag=!winend] run tag @s[tag=!playing,tag=!spectating,tag=!working,tag=!dmDead] add spectating
execute if entity @a[tag=partyLeader,tag=spectating,tag=!win,tag=!lose,tag=!winend] run tag @s[tag=!playing,tag=!spectating,tag=!working,tag=!dmDead] add spectating

function du-in:other/tag_clear

#IF NOT SAME LOBBY#
execute if entity @a[tag=partyLeader,tag=cl] run tag @s add cl
execute if entity @a[tag=partyLeader,tag=dml] run tag @s add dml
execute if entity @a[tag=partyLeader,tag=kothl] run tag @s add kothl
execute if entity @a[tag=partyLeader,tag=ctfl] run tag @s add ctfl
execute if entity @a[tag=partyLeader,tag=cql] run tag @s add cql
#execute if entity @a[tag=partyLeader,tag=exl] run tag @s add exl
execute if entity @a[tag=partyLeader,tag=cmap] run tag @s add cmap
execute if entity @a[tag=partyLeader,tag=kitMenu,tag=lobby] run tag @s add kitMenu

#IF NOT SAME GAMEMODE#
execute if entity @a[tag=partyLeader,tag=ranMode] run tag @s add ranMode
execute unless entity @a[tag=partyLeader,tag=ranMode] run tag @s remove ranMode

execute if entity @a[tag=partyLeader,tag=cIngame] run tag @s add cIngame
execute if entity @a[tag=partyLeader,tag=dmIngame] run tag @s add dmIngame
execute if entity @a[tag=partyLeader,tag=kothIngame] run tag @s add kothIngame
execute if entity @a[tag=partyLeader,tag=ctfIngame] run tag @s add ctfIngame
execute if entity @a[tag=partyLeader,tag=cqIngame] run tag @s add cqIngame
#execute if entity @a[tag=partyLeader,tag=exIngame] run tag @s add exIngame

execute if entity @a[tag=partyLeader,tag=song] run tag @s[tag=!musicOff] add song


execute if entity @a[tag=partyLeader,tag=songEnd] run tag @s[tag=!musicOff] add songEnd



execute unless entity @a[scores={lobby=3},tag=partyLeader] run bossbar set minecraft:map_countdown visible false

execute if entity @s[tag=spectating] run function du-in:ingame/spect

function du-in:lobby/item_reset

scoreboard players set @s music 0
tag @s remove online

scoreboard players reset @s back
clear @s
execute if entity @a[tag=partyLeader,tag=playing] run tag @s remove lobby
tag @s remove startgame
#execute if entity @s[scores={lobby=3},tag=ready] run scoreboard players set @s kitRemove 1
execute if entity @a[tag=partyLeader,tag=!playing] run scoreboard players reset @s killIngame
execute if entity @a[tag=partyLeader,tag=!playing] run scoreboard players reset @s kothTimer

#MAKE PLAYER ALIGN WITH PARTY LEADER TEAMMODE#
execute if entity @a[tag=partyLeader,tag=!teamMode] run tag @s remove teamMode
execute if entity @a[tag=partyLeader,tag=teamMode] run tag @s add teamMode

execute if entity @a[tag=partyLeader,tag=playing] if entity @a[tag=playing,distance=50..] run tp @s[tag=playing] @a[tag=partyLeader,limit=1]
execute if entity @a[tag=partyLeader,tag=spectating] if entity @a[tag=playing,distance=50..] run tp @s[tag=playing] @r[tag=playing,sort=furthest]
execute if entity @a[tag=partyLeader,tag=spectating] run tp @s[tag=!playing,tag=!spectating] @r[tag=playing]

execute if entity @a[tag=partyLeader,tag=lobby,tag=!shop,tag=!parkour] run tp @s @a[tag=partyLeader,limit=1]
execute if entity @a[tag=partyLeader,tag=lobby,tag=!shop,tag=parkour] run tp @s -999 13 517 -90 0
execute if entity @a[tag=partyLeader,tag=lobby,tag=shop,tag=!parkour] run tp @s -999 13 517 -90 0
execute if entity @a[tag=partyLeader,tag=lobby] run team join lobby @s[tag=!playing,tag=!ready,tag=!dmDead,tag=!spectating,tag=!team1,tag=!team2,tag=!AFK]

scoreboard players set @s kitTheme 1
function du-in:lobby/item_reset
scoreboard players set @s kitList 7
tag @s[tag=kitMenu] add kitsListed
scoreboard players reset @s leaveGame