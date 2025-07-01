#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/knight with storage du-in:main player

item replace entity @s[tag=kitMenu] inventory.11 with minecraft:player_head[custom_data={du-in:'knightHead'},custom_name={text:"The Knight",color:white,bold:true,italic:false},lore=[{text:"Hollow Knight",color:"#43a9e0",bold:true,"italic":true}],profile={id:[I;1826742671,-1687862313,-1673027937,593069689],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTBmNTc5ZjQxYjcwZDFlNDQzNWQ5NDFhNjIwYzBjZWQ2MmRhYmJmODM4ZTExZGMyNGE0ODQ5YWVlNTUwZGM3MyJ9fX0="}]}]

execute if entity @s[scores={kitList=10}] run scoreboard players remove @s kitList 1
