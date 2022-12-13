playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 10 .95
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 .3
playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 10 .95

execute unless score #gamemode gamemodeID matches 6.. run scoreboard players add #gamemode gamemodeID 1
execute if score #gamemode gamemodeID matches 6.. run scoreboard players set #gamemode gamemodeID 1

execute if score #gamemode gamemodeID matches 1 run tellraw @a ["",{"text":"Classic ","bold":true,"color":"gold"},{"text":"has been ","color":"gray"},{"text":"selected","bold":false,"color":"gray"}]
execute if score #gamemode gamemodeID matches 2 run tellraw @a ["",{"text":"Deathmatch ","bold":true,"color":"red"},{"text":"has been ","color":"gray"},{"text":"selected","bold":false,"color":"gray"}]
execute if score #gamemode gamemodeID matches 3 run tellraw @a ["",{"text":"King of the Hill ","bold":true,"color":"green"},{"text":"has been ","color":"gray"},{"text":"selected","bold":false,"color":"gray"}]
execute if score #gamemode gamemodeID matches 4 run tellraw @a ["",{"text":"Capture the Flag ","bold":true,"color":"aqua"},{"text":"has been ","color":"gray"},{"text":"selected","bold":false,"color":"gray"}]
execute if score #gamemode gamemodeID matches 5 run tellraw @a ["",{"text":"Conquest ","bold":true,"color":"dark_red"},{"text":"has been ","color":"gray"},{"text":"selected","bold":false,"color":"gray"}]
#execute if score #gamemode gamemodeID matches 6 run tellraw @a ["",{"text":"Extraction ","bold":true,"color":"yellow"},{"text":"has been ","color":"gray"},{"text":"selected","bold":false,"color":"gray"}]

execute unless score #main lobbyTheme matches 1.. run function du-in:lobby/display/default/display
execute if score #main lobbyTheme matches 1 run function du-in:lobby/display/halloween/display
execute if score #main lobbyTheme matches 2 run function du-in:lobby/display/thanks/display
execute if score #main lobbyTheme matches 3 run function du-in:lobby/display/christmas/display
execute if score #main lobbyTheme matches 4 run function du-in:lobby/display/easter/display

function du-in:lobby/display/default/text

 particle minecraft:cloud -983 15 517 3.5 3.5 3.5 0 300 force

#function du-in:other/afk/end

scoreboard players reset @s gamemodeSwitch

#tag @s remove gamemodeSwitch