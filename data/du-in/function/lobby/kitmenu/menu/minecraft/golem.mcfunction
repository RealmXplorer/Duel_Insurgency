#Set storage to currently selected player
execute if entity @s[scores={kitList=..0}] store result storage du-in:main player.current int 1 run scoreboard players get @s player

#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/golem with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/minecraft/golem

item replace entity @s[tag=kitMenu] inventory.3 with minecraft:player_head[custom_data={du-in:'golemHead'},custom_name='{"text":"Iron Golem","color":"white","bold":true,"italic":false}',lore=['{"text":"Minecraft","color":"green","bold":true,"italic":true}'],profile={id:[I;-847629707,-1011593993,-2048760807,-2341734],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjJiY2FjZWViNDE2MmY0MDBkNDQ3NDMzMTU5MzJhYzgyMGQzMTE5YWM4OTg2YTAxNjFhNzI2MTYxY2NjOTNmYyJ9fX0="}]}] 1

execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1