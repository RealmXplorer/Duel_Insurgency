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
scoreboard players set #main lobby 3

#Set player lobby to 3
scoreboard players set @a lobby 3

#If in Classic or Deathmatch, let game know to use same map pool
tag @a[tag=cl] add cmap
tag @a[tag=dml] add cmap

#Stop all music
#execute as @a run function du-in:music/lobby/stop/parkour
#execute as @a run function du-in:music/lobby/stop/shop
#execute as @a run function du-in:music/lobby/stop/lobby

stopsound @a record

#Pass "gamemode" score into new "setGamemode" score for map voting
execute store result score #main setGamemode run scoreboard players get #gamemode gamemode

#Reset all item tags
execute as @a run function du-in:lobby/item_reset

#Teleport players to map select
execute as @a run function du-in:lobby/mapselect/tomap
kill @e[tag=displayItem]
function du-in:lobby/mapselect/switch

#Start music
scoreboard players set @a music 0

#End function
scoreboard players reset #gamemode gamemode