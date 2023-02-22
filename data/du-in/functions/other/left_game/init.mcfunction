#Stop sound for player who left
stopsound @s

#Remove party leader tag from player who left
tag @s remove partyLeader

#Reset all timers for player who left
scoreboard players reset @s titleTimer
scoreboard players reset @s titleTimer2
scoreboard players reset @s healthTimer
scoreboard players reset @s regenTimer

#Remove flag from player who left
tag @s remove flagGot

#Remove other tags from player who left
tag @s remove startgame
tag @s remove countStop

#Revoke kill advancement (to prevent certain bugs)
advancement revoke @s only du-in:utility/kill

#CLEAR TAGS
function du-in:other/tag_clear

#IF PARTY LEADER IS IN LOBBY
execute if entity @a[tag=partyLeader,tag=lobby] run function du-in:other/left_game/in_lobby

#IF PARTY LEADER IS IN GAME OR IS SPECTATING
execute if entity @a[tag=partyLeader,tag=playing] run function du-in:other/left_game/in_game
execute if entity @a[tag=partyLeader,tag=spectating] run function du-in:other/left_game/in_game

#MATCH PLAYER TO PARTY LEADER'S RANDOM MODE#
execute if entity @a[tag=partyLeader,tag=ranMode] run tag @s add ranMode
execute unless entity @a[tag=partyLeader,tag=ranMode] run tag @s remove ranMode

#REMOVE MAP COUNTDOWN BOSSBAR IF NOT IN MAP SELECT
execute unless entity @a[scores={lobby=3},tag=partyLeader] run bossbar set minecraft:map_countdown visible false

#Reset items for player who left
function du-in:lobby/item_reset

#Set music to 0 for player who left
scoreboard players set @s music 0
#tag @s remove online

#Reset lobby "back" score
scoreboard players reset @s back

#Clear player's inventory
clear @s

#Remove the "startgame" tag to prevent a double start
tag @s remove startgame

#MAKE PLAYER ALIGN WITH PARTY LEADER TEAMMODE#
execute if entity @a[tag=partyLeader,tag=!teamMode] run tag @s remove teamMode
execute if entity @a[tag=partyLeader,tag=teamMode] run tag @s add teamMode

#RESET KIT MENU
scoreboard players set @s kitTheme 1
function du-in:lobby/item_reset
scoreboard players set @s kitList 7
tag @s[tag=kitMenu] add kitsListed

#End function
scoreboard players reset @s leaveGame