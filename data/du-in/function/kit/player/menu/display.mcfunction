#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:kit/player/menu/select with storage du-in:main player

item replace entity @s[tag=kitMenu] inventory.2 with minecraft:player_head[custom_data={du-in:'playerHead'},custom_name={text:"Player",color:white,bold:true,italic:false},lore=[{text:"Minecraft",color:green,bold:true}]]

execute if entity @s[scores={kitList=2}] run scoreboard players remove @s kitList 1