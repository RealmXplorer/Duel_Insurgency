#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:kit/rory/menu/select with storage du-in:main player

$item replace entity @s[tag=kitMenu] inventory.$(slot) with minecraft:player_head[custom_data={du-in:'roryHead'},custom_name={text:"Roaring Knight",color:white,bold:true,italic:false},lore=[{text:"Deltarune",color:"#17FFB9",bold:true,"italic":true}],item_model="du-in:rory/head"]