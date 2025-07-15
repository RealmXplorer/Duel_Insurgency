#Remove tags for Shop
tag @s remove shop

#Kill tabba and Hugo if no one else is in shop
execute unless entity @a[tag=shop] run tp @e[tag=tabba] 216 -100 40
execute unless entity @a[tag=shop] run kill @e[tag=tabba]

#Reset Tabba Dialogue
scoreboard players set @s tabbaTalk 0
scoreboard players set @s tabbaVendingTalk 0

#Teleport to gamemode select
#This function returns players to Gamemode select from credits
#execute unless entity @a[tag=partyLeader,tag=specialEvent] run tp @s -999 13 517 -90 0

tp @s -999 13 517 -90 0

#If in special event
#execute if entity @a[tag=partyLeader,tag=specialEvent] run tp @s -4279 23 -2317


#Stop shop music and start new music
function du-in:music/lobby/stop/shop
scoreboard players set @s music 0

function du-in:lobby/shop/drinks/reset

#Reset functions and schedule gamemode select.
function du-in:lobby/reset/item
tag @s remove subLobby
clear @s
function du-in:lobby/scheduled/gamemode_select

#Play sound
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5