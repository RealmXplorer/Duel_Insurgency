#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/jevil with storage du-in:main player

item replace entity @s[tag=kitMenu] inventory.12 with minecraft:player_head[custom_data={du-in:'jevilHead'},custom_name={text:"Jevil",color:white,bold:true,italic:false},lore=[{text:"Deltarune",color:"#17FFB9",bold:true,"italic":true}],profile={id:[I;1625464866,-1389935494,-1547930968,341631364],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY3NWFjMzc3M2Q5MjJiNDNhNGI3M2Y2M2VjODFiYTZmMWIyNzk1ZDNkNjVkZGJhODZkYzgyZjBhMjZjZTkyOCJ9fX0="}]}] 1

execute if entity @s[scores={kitList=11}] run scoreboard players remove @s kitList 1