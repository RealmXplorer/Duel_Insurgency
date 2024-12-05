#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Pick / Purchase
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/runza with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/runza

#Head Display
item replace entity @s[tag=kitMenu] inventory.3 with minecraft:player_head[custom_data={du-in:'runzaHead'},custom_name='{"text":"Runza Rex","color":"white","bold":true,"italic":false}',lore=['{"text":"Runza Restaurants","color":"dark_green","bold":true,"italic":true}'],profile={id:[I;1628619847,-798801625,-2062989915,-239227229],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjNhMzUzMzI3N2RkOTZkMmEyNDNjYmFmY2RkZTA4OTQwMWY3YTc4Zjg4MTYxYjM3ZTYxMDBjYTNhNWMwOGRkMSJ9fX0="}]}] 1

execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1