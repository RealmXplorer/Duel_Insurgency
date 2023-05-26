tag @s remove shop
tag @s remove skinMenu

execute unless entity @a[tag=shop] run tp @e[tag=tabba] 216 -100 40
execute unless entity @a[tag=shop] run kill @e[tag=tabba]

execute unless entity @a[tag=shop] run kill @e[tag=shopSpecific]
tp @s[tag=!working] -999 13 517 -90 0
function du-in:music/lobby/stop/shop
scoreboard players set @s music 0
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 1.5
function du-in:lobby/item_reset
tag @s remove subLobby
clear @s
function du-in:lobby/scheduled/gamemode_select