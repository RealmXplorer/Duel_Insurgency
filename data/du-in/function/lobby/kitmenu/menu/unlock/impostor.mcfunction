#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Pick / Purchase
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/impostor with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/impostor

#Head Displays
item replace entity @s[tag=kitMenu] inventory.2 with minecraft:player_head[custom_data={du-in:'susHead'},custom_name={text:"The Impostor",color:white,bold:true,italic:false},lore=[{text:"Among Us",color:"#C91048",bold:true,"italic":true}],profile={id:[I;-662073347,1607614868,-1528156711,-1436011716],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdkNWViMGFlYTVkNjFiYTNmZjQ5OTY0MTZhOTAwOTZhOWQ3NzYwOWViY2QzYjMwOGY5MDZhZTg4OGE0NWY2ZCJ9fX0="}]}] 1

execute if entity @s[scores={kitList=2}] run scoreboard players remove @s kitList 1