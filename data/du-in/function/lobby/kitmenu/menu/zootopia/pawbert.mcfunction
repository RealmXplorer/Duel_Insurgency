#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/zootopia/pawbert with storage du-in:main player

item replace entity @s[tag=kitMenu] inventory.4 with minecraft:player_head[custom_data={du-in:'pawbertHead'},custom_name={text:"Pawbert Lynxley",color:white,bold:true,italic:false},lore=[{text:"Zootopia 2",color:"#40c962",bold:true,"italic":true}],profile={id:[I;56540256,-2028844864,-1926276693,-279484003],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODMwYmIxMTc5MWEyNjI4ZWQ0NjNhNDcyMjZhODM5NDEyMGZlMjFjZmQ5YTViMzlkOGIzZTUxOTVlMmM5ZDExOSJ9fX0="}]}] 1

execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1

