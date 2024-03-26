tp @e[tag=tabba] 216 -100 40
kill @e[tag=tabba]
kill @e[type=area_effect_cloud,tag=gamemodeLabel]

#Set players gamemode lobby (This lets the game know which map and gamemode to initialize)
execute if score #gamemode gamemode matches 1 run tag @a add cl
execute if score #gamemode gamemode matches 2 run tag @a add dml
execute if score #gamemode gamemode matches 3 run tag @a add kothl
execute if score #gamemode gamemode matches 4 run tag @a add ctfl
execute if score #gamemode gamemode matches 5 run tag @a add cql

#Announce the gamemode selected
execute if score #gamemode gamemode matches 1 run tellraw @a [{"text":"The ","bold":false,"color":"gray"},{"text":"Classic ","bold":true,"color":"gold"},{"text":"gamemode has been chosen!","bold":false,"color":"gray"}]
execute if score #gamemode gamemode matches 2 run tellraw @a [{"text":"The ","bold":false,"color":"gray"},{"text":"Deathmatch ","bold":true,"color":"red"},{"text":"gamemode has been chosen!","bold":false,"color":"gray"}]
execute if score #gamemode gamemode matches 3 run tellraw @a [{"text":"The ","bold":false,"color":"gray"},{"text":"King of the Hill ","bold":true,"color":"green"},{"text":"gamemode has been chosen!","bold":false,"color":"gray"}]
execute if score #gamemode gamemode matches 4 run tellraw @a [{"text":"The ","bold":false,"color":"gray"},{"text":"Capture the Flag ","bold":true,"color":"aqua"},{"text":"gamemode has been chosen!","bold":false,"color":"gray"}]
execute if score #gamemode gamemode matches 5 run tellraw @a [{"text":"The ","bold":false,"color":"gray"},{"text":"Conquest ","bold":true,"color":"dark_red"},{"text":"gamemode has been chosen!","bold":false,"color":"gray"}]

#Auto set CTF and Conquest to team mode.
execute if score #gamemode gamemode matches 4.. run tag @a add teamMode

#Remove Sub-lobby tags
tag @a remove shop
tag @a remove parkour
tag @a remove credits
tag @a remove subLobby

#Clear inventories
clear @a

#Set Lobby Scores
scoreboard players set #main lobby 2
scoreboard players set @a lobby 2

#If in Classic or Deathmatch, let game know to use same map pool
tag @a[tag=cl] add cmap
tag @a[tag=dml] add cmap

#Stop Music
stopsound @a record
schedule clear du-in:music/free/free

#Pass "gamemode" score into new "setGamemode" score for map voting
execute store result score #main setGamemode run scoreboard players get #gamemode gamemode

#Reset all item tags
execute as @a run function du-in:lobby/item_reset

#Teleport players to map select
kill @e[tag=displayItem]
function du-in:lobby/mapselect/switch

#Clear Effects
effect clear @a
execute as @a run function du-in:lobby/shop/drinks/reset
execute as @a run function du-in:lobby/shop/drinks/drink_milk

#Start music
scoreboard players set @a music 0



tp @a[tag=!spectator] 232 91 36 180 0
execute as @a run function du-in:music/lobby/stop/kitselect
bossbar set minecraft:kit_countdown visible false
scoreboard players set #main kitOnline 0
tag @a remove ready
team leave @a[team=Ready]

scoreboard players set #main mapCountdown 300
function du-in:lobby/item_reset
clear @a
bossbar set minecraft:map_countdown visible true

playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5
scoreboard players set @a kitTheme 1
scoreboard players set @a kitList 7
tag @a add kitMenu

#Set Lobby Score
# scoreboard players set @a lobby 2
# scoreboard players set #main lobby 2

title @a times 0 60 0
title @a title {"text":"","color":"red","bold":true}
title @a[tag=!teamMode] subtitle {"text":"Open inventory to select a character!","color":"red","bold":true}
title @a[tag=teamMode] subtitle {"text":"Pick a team and open inventory to select a character!","color":"red","bold":true}

#End function
scoreboard players reset #gamemode gamemode