#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/cinder with storage du-in:main player

item replace entity @s[tag=kitMenu] inventory.11 with minecraft:player_head[custom_data={du-in:'cinderHead'},custom_name={text:"Soul of Cinder",color:white,bold:true,italic:false},lore=[{text:"Dark Souls III",color:"#f19812",bold:true,"italic":true}],profile={id:[I;1151905204,-2042347114,-1950132263,-865673241],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzgwMjZlNWQwYWRkZTk0MDg2M2QxZDg3NTE5NDBhZDc0YWVkY2YzNTJiNzc1MWQyMWZmOTY0MmVkMTYyODEwNSJ9fX0="}]}]

execute if entity @s[scores={kitList=10}] run scoreboard players remove @s kitList 1