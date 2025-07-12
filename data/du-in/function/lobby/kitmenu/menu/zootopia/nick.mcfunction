#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/zootopia/nick with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/nick

item replace entity @s[tag=kitMenu] inventory.1 with minecraft:player_head[custom_data={du-in:'nickHead'},custom_name={text:"Nick Wilde",color:white,bold:true,italic:false},lore=[{text:"Zootopia",color:light_purple,bold:true,"italic":true}],profile={id:[I;1871097700,1962756176,-1702731409,-1492360457],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGI1MDRhNWM2NmExNzEyMTNkMWQwODFlMTMxN2MwMWM0YWYxZWEzMGE3MGRmNWM2YzY1ZGFlMjcxM2UwNjYzYSJ9fX0="}]}] 1
execute if entity @s[scores={kitList=1}] run scoreboard players remove @s kitList 1