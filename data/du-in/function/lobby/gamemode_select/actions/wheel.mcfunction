playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 10 .95
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 .3
playsound minecraft:block.ender_chest.open master @a ~ ~ ~ 10 .95

execute unless score #main gamemode matches 6.. run scoreboard players add #main gamemode 1
execute if score #main gamemode matches 6.. run scoreboard players set #main gamemode 1

execute if score #main gamemode matches 1 run tellraw @a ["",{text:"Classic ",bold:true,color:gold},{text:"has been ",color:gray},{text:"selected",bold:false,color:gray}]
execute if score #main gamemode matches 2 run tellraw @a ["",{text:"Deathmatch ",bold:true,color:red},{text:"has been ",color:gray},{text:"selected",bold:false,color:gray}]
execute if score #main gamemode matches 3 run tellraw @a ["",{text:"King of the Hill ",bold:true,color:green},{text:"has been ",color:gray},{text:"selected",bold:false,color:gray}]
execute if score #main gamemode matches 4 run tellraw @a ["",{text:"Capture the Flag ",bold:true,color:aqua},{text:"has been ",color:gray},{text:"selected",bold:false,color:gray}]
execute if score #main gamemode matches 5 run tellraw @a ["",{text:"Conquest ",bold:true,color:dark_red},{text:"has been ",color:gray},{text:"selected",bold:false,color:gray}]

execute unless score #main pylonsDestroyed matches 3 unless score #main lobbyTheme matches 1.. run function du-in:lobby/theme/default/display
execute unless score #main pylonsDestroyed matches 3 if score #main lobbyTheme matches 1 run function du-in:lobby/theme/halloween/display
execute unless score #main pylonsDestroyed matches 3 if score #main lobbyTheme matches 2 run function du-in:lobby/theme/thanks/display
execute unless score #main pylonsDestroyed matches 3 if score #main lobbyTheme matches 3 run function du-in:lobby/theme/christmas/display
execute unless score #main pylonsDestroyed matches 3 if score #main lobbyTheme matches 4 run function du-in:lobby/theme/easter/display

execute if score #main pylonsDestroyed matches 3 run function du-in:lobby/theme/void/display

function du-in:lobby/theme/default/text

 particle minecraft:cloud -983 15 517 3.5 3.5 3.5 0 300 force