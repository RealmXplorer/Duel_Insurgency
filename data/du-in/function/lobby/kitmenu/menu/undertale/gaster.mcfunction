#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/gaster with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/gaster

item replace entity @s[tag=kitMenu] inventory.7 with minecraft:player_head[custom_data={du-in:'gasterHead'},custom_name='{"text":"Gaster","color":"white","bold":true,"italic":false}',lore=['{"text":"Undertale","color":"aqua","bold":true,"italic":true}'],profile={id:[I;1144803015,773998093,-2103491651,-2103585732],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWM4MDQ0YzdjN2U1MjdkNDMyYjRhZTcxYjFjNDg2NWM4NzZkOGFjODIzZjE0Njc0OTNiYWM4MmE2OTZmOTZkNSJ9fX0="}]}] 1

execute if entity @s[scores={kitList=7}] run scoreboard players remove @s kitList 1