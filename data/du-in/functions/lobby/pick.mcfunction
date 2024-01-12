tp @e[tag=tabba] 216 -100 40
kill @e[tag=tabba]
kill @e[type=area_effect_cloud,tag=gamemodeLabel]

#Set players gamemode lobby (This lets the game know which map and gamemode to initialize)
execute if score #gamemode gamemode matches 1 run tag @a[tag=!working] add cl
execute if score #gamemode gamemode matches 2 run tag @a[tag=!working] add dml
execute if score #gamemode gamemode matches 3 run tag @a[tag=!working] add kothl
execute if score #gamemode gamemode matches 4 run tag @a[tag=!working] add ctfl
execute if score #gamemode gamemode matches 5 run tag @a[tag=!working] add cql
#execute if score #gamemode gamemode matches 6 run tag @a[tag=!working] add exl

#Announce the gamemode selected
execute if score #gamemode gamemode matches 1 run tellraw @a [{"text":"The ","bold":false,"color":"gray"},{"text":"Classic ","bold":true,"color":"yellow"},{"text":"gamemode has been chosen!","bold":false,"color":"gray"}]
execute if score #gamemode gamemode matches 2 run tellraw @a [{"text":"The ","bold":false,"color":"gray"},{"text":"Deathmatch ","bold":true,"color":"yellow"},{"text":"gamemode has been chosen!","bold":false,"color":"gray"}]
execute if score #gamemode gamemode matches 3 run tellraw @a [{"text":"The ","bold":false,"color":"gray"},{"text":"King of the Hill ","bold":true,"color":"yellow"},{"text":"gamemode has been chosen!","bold":false,"color":"gray"}]
execute if score #gamemode gamemode matches 4 run tellraw @a [{"text":"The ","bold":false,"color":"gray"},{"text":"Capture the Flag ","bold":true,"color":"yellow"},{"text":"gamemode has been chosen!","bold":false,"color":"gray"}]
execute if score #gamemode gamemode matches 5 run tellraw @a [{"text":"The ","bold":false,"color":"gray"},{"text":"Conquest ","bold":true,"color":"yellow"},{"text":"gamemode has been chosen!","bold":false,"color":"gray"}]
#execute if score #gamemode gamemode matches 6 run tellraw @a [{"text":"The ","bold":false,"color":"gray"},{"text":"Extraction ","bold":true,"color":"yellow"},{"text":"gamemode has been chosen!","bold":false,"color":"gray"}]

#Auto set CTF and Conquest to team mode.
execute if score #gamemode gamemode matches 4.. run tag @a add teamMode

#Remove Sub-lobby tags
tag @a remove shop
tag @a remove skinMenu
tag @a remove parkour
tag @a remove credits
tag @a remove subLobby

#Clear inventories
clear @a

#Remove item tags
#tag @a remove givenStats
tag @a remove givenEx

#schedule clear du-in:lobby/scheduled/gamemode_select

#Set global lobby to 3
#scoreboard players set #main lobby 3
scoreboard players set #main lobby 2

#Set player lobby to 3
#scoreboard players set @a lobby 3
scoreboard players set @a lobby 2

#If in Classic or Deathmatch, let game know to use same map pool
tag @a[tag=cl] add cmap
tag @a[tag=dml] add cmap

#Stop all music
#execute as @a run function du-in:music/lobby/stop/parkour
#execute as @a run function du-in:music/lobby/stop/shop
#execute as @a run function du-in:music/lobby/stop/lobby

stopsound @a record
schedule clear du-in:music/free/free

#Pass "gamemode" score into new "setGamemode" score for map voting
execute store result score #main setGamemode run scoreboard players get #gamemode gamemode

#Reset all item tags
execute as @a run function du-in:lobby/item_reset

#Teleport players to map select
#execute as @a run function du-in:lobby/mapselect/tomap
kill @e[tag=displayItem]
function du-in:lobby/mapselect/switch

effect clear @s invisibility

#Start music
scoreboard players set @a music 0



tp @a[tag=!spectator,tag=!working] 232 91 36 180 0
#kill @e[tag=displayItem]
#function du-in:lobby/mapselect/switch
#tag @a remove mystery
execute as @a run function du-in:music/lobby/stop/kitselect
#execute if entity @s[tag=teamMode] run tp @s[tag=teamMode,tag=!spectator] 512 5 528 0 0
bossbar set minecraft:kit_countdown visible false
scoreboard players set #main kitOnline 0
tag @a remove ready
team leave @a[team=Ready]

scoreboard players set #main mapCountdown 300
function du-in:lobby/item_reset
clear @a
#execute unless entity @a[tag=teamMode] run bossbar set minecraft:map_countdown visible true
#execute unless entity @a[tag=teamMode] run bossbar set minecraft:map_countdown visible true
bossbar set minecraft:map_countdown visible true
#bossbar set minecraft:map_countdown visible true

playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5
scoreboard players set @a kitTheme 1
scoreboard players set @a kitList 7
tag @a add kitMenu

#scoreboard players set @a lobby 3
#scoreboard players set #main lobby 3

scoreboard players set @a lobby 2
scoreboard players set #main lobby 2

title @a times 0 60 0
title @a title {"text":"","color":"red","bold":true}
title @a[tag=!teamMode] subtitle {"text":"Open inventory to select a character!","color":"red","bold":true}
title @a[tag=teamMode] subtitle {"text":"Pick a team and open inventory to select a character!","color":"red","bold":true}

#End function
scoreboard players reset #gamemode gamemode