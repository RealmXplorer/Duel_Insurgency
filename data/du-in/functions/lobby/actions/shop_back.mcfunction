#Remove tags for Shop
tag @s remove shop
tag @s remove skinMenu

#Kill tabba and Hugo if no one else is in shop
execute unless entity @a[tag=shop] run tp @e[tag=tabba] 216 -100 40
execute unless entity @a[tag=shop] run kill @e[tag=tabba]

#Reset Tabba Dialogue
scoreboard players set @s tabbaTalk 0
scoreboard players set @s tabbaVendingTalk 0
#execute unless entity @a[tag=shop] run kill @e[tag=shopSpecific]

#Teleport to gamemode select
tp @s[tag=!working] -999 13 517 -90 0

#Stop shop music and start new music
function du-in:music/lobby/stop/shop
scoreboard players set @s music 0

#Reset functions and schedule gamemode select.
function du-in:lobby/item_reset
tag @s remove subLobby
clear @s
function du-in:lobby/scheduled/gamemode_select

#Play sound
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5