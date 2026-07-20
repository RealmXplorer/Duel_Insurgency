#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:kit/willo/menu/select with storage du-in:main player

item replace entity @s[tag=kitMenu] inventory.12 with minecraft:player_head[custom_data={du-in:'willoHead'},custom_name={text:"Willo",color:white,bold:true,italic:false},lore=[{text:"Tales from the Hallows",color:"#ca520c",bold:true,"italic":true}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmJiMGNmNGNmN2Y1ZmU2MDI5NWQ4ZTllNGQwYWFkNTNmZTNiYTJjMDhmNjc2ZWI1YjYzY2ZkZTM2MWVhYzgxZSJ9fX0="}]}]

execute if entity @s[scores={kitList=11}] run scoreboard players remove @s kitList 1
