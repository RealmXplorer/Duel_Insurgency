#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/papyrus with storage du-in:main player
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/papyrus

item replace entity @s[tag=kitMenu] inventory.4 with minecraft:player_head[custom_data={du-in:'papyrusHead'},custom_name={text:"Papyrus",color:white,bold:true,italic:false},lore=[{text:"Undertale",color:aqua,bold:true,"italic":true}],profile={id:[I;620872026,1752321509,-1189445380,707847166],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWQzZDVkMjRhN2Q0Mjk0ZjVhYThiZGI0NDdlOWZmOTU4YjNhMGZlNWNkOTYzYjliZGE1ODdjYzE1ZTlhODUifX19"}]}] 1

execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1