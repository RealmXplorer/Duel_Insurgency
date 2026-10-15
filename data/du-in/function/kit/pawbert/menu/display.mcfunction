#Set storage to currently selected player
# execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player
# execute if entity @s[scores={kitList=..0}] run function du-in:kit/pawbert/menu/select with storage du-in:main player
execute if entity @s[tag=!renderingKit] store result storage du-in:main player.current int 1 run scoreboard players get @s player
execute if entity @s[tag=!renderingKit] run function du-in:kit/pawbert/menu/select with storage du-in:main player

#Head
$item replace entity @s[tag=kitMenu] inventory.$(slot) with minecraft:player_head[custom_data={du-in:'pawbertHead'},custom_name={text:"Pawbert Lynxley",color:white,bold:true,italic:false},lore=[{text:"Zootopia 2",color:"#40c962",bold:true,"italic":true}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFiY2Y0Mjk3MGRjZDAxMDYxYzZhMTc4NDdiODdlZjRmMTFkZmNhNGIzODc1ZThlMzhiYzkyODcxMDIwNWJhOCJ9fX0="}]}] 1
