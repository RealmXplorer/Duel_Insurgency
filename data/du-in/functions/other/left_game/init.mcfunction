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

#IF PARTY LEADER IS IN LOBBY
execute if entity @a[tag=partyLeader,tag=lobby] run function du-in:other/left_game/in_lobby

#IF PARTY LEADER IS IN GAME OR IS SPECTATING
execute if entity @a[tag=partyLeader,tag=playing] run function du-in:other/left_game/in_game
execute if entity @a[tag=partyLeader,tag=spectating] run function du-in:other/left_game/in_game

#CLEAR TAGS
function du-in:other/tag_clear

#MATCH PLAYER TO RANDOM MODE#
execute if entity @a[tag=partyLeader,tag=ranMode] run tag @s add ranMode
execute unless entity @a[tag=partyLeader,tag=ranMode] run tag @s remove ranMode

#REMOVE MAP COUNTDOWN BOSSBAR IF NOT IN MAP SELECT
execute unless entity @a[scores={lobby=3},tag=partyLeader] run bossbar set minecraft:map_countdown visible false

#execute if entity @s[tag=spectating] run function du-in:ingame/spect

function du-in:lobby/item_reset

scoreboard players set @s music 0
#tag @s remove online

scoreboard players reset @s back
clear @s
tag @s remove startgame

#MAKE PLAYER ALIGN WITH PARTY LEADER TEAMMODE#
execute if entity @a[tag=partyLeader,tag=!teamMode] run tag @s remove teamMode
execute if entity @a[tag=partyLeader,tag=teamMode] run tag @s add teamMode

#RESET KIT MENU
scoreboard players set @s kitTheme 1
function du-in:lobby/item_reset
scoreboard players set @s kitList 7
tag @s[tag=kitMenu] add kitsListed


scoreboard players reset @s leaveGame