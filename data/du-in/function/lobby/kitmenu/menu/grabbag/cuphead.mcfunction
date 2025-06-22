#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/cuphead with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/cuphead
item replace entity @s[tag=kitMenu] inventory.4 with minecraft:player_head[custom_data={du-in:'cupHead'},custom_name={text:"Cuphead",color:white,bold:true,italic:false},lore=[{text:"Cuphead",color:"#FAE900",bold:true,"italic":true}],profile={id:[I;-1338006069,2041596448,-1132796168,-93113296],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg0NzQ3ODkxZjRmNGI2NGI4MzYwY2UxMGFiNmRhYzNkMDhjMzRhNzM0MzQ2YWFmNWQ5MTg1MDJlMzAxNGNhNyJ9fX0="}]}]

execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1